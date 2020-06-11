module Api
  module V1
    class AccountsController < Api::V1::ApplicationController
      before_action :authenticate_user!, except: [:create, :send_mobile_code, :sign_in, :reset_password, :aqy_access_token, :refresh_aqy_token, :wx_token_and_ticket]

      # 注册
      # POST /api/v1/accounts

      def create
        requires! :mobile
        requires! :code
        requires! :password
        requires! :confirm_password

        mobile = params[:mobile]
        code = params[:code]
        password = params[:password]
        confirm_password = params[:confirm_password]

        if current_user.present?
          return render_json(1, '请登出再注册')
        end

        status, message = UserService.validate_password(password, confirm_password)
        unless status
          return render_json(1, message)
        end

        sms = SMSService.new(mobile)
        status, message = sms.validate?(code, SMSService::TYPE_REGISTER)
        if status
          user = User.create(mobile: mobile, password: password)
          if user.save
            user.login(password, request.remote_ip)
            render json: {code: 0, message: '注册成功', data: {token: user.access_token, nickname: user.nickname, mobile: user.mobile}}
          else
            render_json(1, first_error(user))
          end
        else
          render_json(1, message)
        end
      end

      # 登录
      ## POST /api/v1/accounts/sign_in

      def sign_in
        mobile = params[:mobile]
        password = params[:password]

        if mobile.blank? || password.blank?
          return render_json(1, '请将账户和密码填写完整')
        end

        user = User.find_by(mobile: mobile)

        if user.blank?
          render_json(1, '账户不存在')
        else
          status, message = user.login(password, request.remote_ip)
          if status
            render json: {code: 0, message: message, data: {token: user.access_token, nickname: user.nickname, mobile: user.mobile, city: user.city.try(:name), avatar: user.avatar}}
          else
            render_json(1, message)
          end
        end
      end

      # 登出
      # POST /api/v1/accounts/sign_out
      def sign_out
        current_user.access_token = nil
        if current_user.save
          render_json(0, '退出成功')
        else
          render_json(1, '退出失败')
        end
      end

      # 发送验证码
      # POST /api/v1/accounts/send_mobile_code

      def send_mobile_code
        requires! :mobile, type: String
        requires! :type, type: String, values: %w(REGISTER RESET_PASSWORD RESET_MOBILE)
        sms = SMSService.new(params[:mobile])
        status, message = sms.send_code(params[:type], request.ip)
        render json: {code: status ? 0 : 1, message: message}
      end

      # 重置手机号
      # POST /api/v1/accounts/reset_mobile

      def reset_mobile
        requires! :password, type: String
        requires! :new_mobile, type: String
        requires! :code, type: String

        new_mobile = params[:new_mobile]
        password = params[:password]
        code = params[:code]

        unless current_user.authenticate(password)
          return render_json(1, '密码不正确')
        end
        sms = SMSService.new(new_mobile)
        status, message = sms.validate?(code, SMSService::TYPE_RESET_MOBILE)
        if status
          current_user.mobile = new_mobile
          if current_user.save
            render_json(0, '手机更新成功')
          else
            render_json(1, first_error(current_user))
          end
        else
          render_json(1, message)
        end
      end

      # 重置密码
      # POST /api/v1/accounts/reset_password


      def reset_password
        requires! :new_password, type: String
        requires! :confirm_password, type: String
        requires! :mobile, type: String
        requires! :code, type: String

        new_password = params[:new_password]
        mobile = params[:mobile]
        code = params[:code]

        status, message = UserService.validate_password(new_password, params[:confirm_password])
        unless status
          return render_json(1, message)
        end

        user = User.find_by(mobile: mobile)

        if user.present?
          sms = SMSService.new(mobile)
          status, message = sms.validate?(code, SMSService::TYPE_RESET_PASSWORD)
          unless status
            return render_json(1, message)
          end
          user.password = new_password
          user.access_token = nil

          if user.save
            render_json(0, '密码重置成功')
          else
            render_json(1, first_error(user))
          end
        else
          render_json(1, '用户不存在')
        end
      end

      def qn_upload_token
        require 'qiniu'
        Qiniu.establish_connection! access_key: Rails.application.secrets.qiniu_access,
                                    secret_key: Rails.application.secrets.qiniu_secret
        bucket = "vehicle-vod"
        put_policy = Qiniu::Auth::PutPolicy.new(bucket)
        # 生成上传 Token
        upload_token = Qiniu::Auth.generate_uptoken(put_policy)
        render json: {code: 0, data: upload_token}
      end

      # 获取爱奇艺访问令牌
      # get /api/v1/accounts/aqy_access_token

      def aqy_access_token
        uri = URI('https://openapi.iqiyi.com/api/iqiyi/authorize')
        req_params = {
            client_id: Rails.application.secrets.aqy_app_key,
            client_secret: Rails.application.secrets.aqy_app_secret,
        }
        uri.query = URI.encode_www_form(req_params)
        res = Net::HTTP.get_response(uri)
        render json: res.body
      end

      ## 刷新爱奇艺access_token
      # get /api/v1/accounts/refresh_aqy_token

      def refresh_aqy_token
        requires! :refresh_token, type: String
        uri = URI('https://openapi.iqiyi.com/api/oauth2/token')
        req_params = {
            client_id: Rails.application.secrets.aqy_app_key,
            grant_type: 'refresh_token',
            refresh_token: params[:refresh_token]
        }
        uri.query = URI.encode_www_form(req_params)
        res = Net::HTTP.get_response(uri)
        render json: res.body
      end

      ## 获取微信 token 及签名
      # get /api/v1/account/wx_token_and_ticket

      def wx_token_and_ticket
        wx_access_token = Rails.cache.read('wx_access_token')
        if wx_access_token.blank?
          uri = URI('https://api.weixin.qq.com/cgi-bin/token')
          req_params = {
              appid: Rails.application.secrets.wx_appid,
              secret: Rails.application.secrets.wx_secret,
              grant_type: 'client_credential'
          }
          uri.query = URI.encode_www_form(req_params)
          res = Net::HTTP.get_response(uri)
          res_body = JSON.parse(res.body)
          wx_access_token = res_body["access_token"]
          if wx_access_token.present?
            Rails.cache.write('wx_access_token', wx_access_token, :expires_in => 2.hours)
          else
            return render json: res_body
          end
        end

        wx_jsapi_ticket = Rails.cache.read('wx_jsapi_ticket')
        if wx_jsapi_ticket.blank?
          uri = URI('https://api.weixin.qq.com/cgi-bin/ticket/getticket')
          req_params = {
              access_token: wx_access_token,
              type: 'jsapi'
          }
          uri.query = URI.encode_www_form(req_params)
          res = Net::HTTP.get_response(uri)
          res_body = JSON.parse(res.body)
          wx_jsapi_ticket = res_body["ticket"]
          if wx_jsapi_ticket.present?
            Rails.cache.write('wx_jsapi_ticket', wx_jsapi_ticket, :expires_in => 2.hours)
          else
            return render json: res_body
          end
        end
        render json: {access_token: wx_access_token, ticket: wx_jsapi_ticket}
      end

    end
  end
end
