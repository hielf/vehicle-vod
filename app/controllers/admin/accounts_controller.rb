module Admin
  class AccountsController < AdminController

    skip_before_action :authenticate, only: [:new, :create]
    layout 'admin_login'

    def new
    end

    def index
      redirect_to '/admin/'
    end

    def create
      mobile = params[:mobile]
      password = params[:password]
      if mobile.blank? || password.blank?
        flash[:error] = '请将账户和密码填写完整'
        render action: 'new'
      else
        user = User.find_by(mobile: mobile)
        if user.blank? || (user.roles & User::ROLES.keys).count == 0
          flash.now[:error] = '用户不存在或没权限登录'
          render action: 'new'
        else
          status, message = user.login(password, request.remote_ip)
          if status
            flash[:notice] = message
            sign_in(user)
            if cookies[:after_sign_in_return_to]
              redirect_to cookies[:after_sign_in_return_to]
            else
              redirect_to '/admin/'
            end
            cookies.delete :after_sign_in_return_to
          else
            flash[:error] = message
            render action: 'new'
          end
        end
      end
    end

    def destroy
      sign_out
      flash[:notice] = '您已成功退出'
      redirect_to '/admin/accounts/new'
      # redirect_to action: :new
    end

    def change_password
      render :layout => 'admin'
    end


    def change_password_post
      status, message = UserService.reset_password(@current_user, params[:password], params[:new_password], params[:confirm_password])

      if status
        sign_out
        flash[:notice] = message
        redirect_to action: :new
      else
        flash[:error] = message
        redirect_to action: :change_password
      end
    end


    private

    def sign_in(user)
      cookies[:access_token] = user.access_token
    end

    def sign_out
      cookies.delete :access_token
    end
  end
end