class SmsJob < ApplicationJob
  queue_as :sms

  def perform(mobile, code, project)
    puts "Mobile:#{mobile},code:#{code},project:#{project},#{Time.now}"
    @var = {}
    @var["code"] = code
    uri = URI.parse("https://api.submail.cn/message/xsend.json")
    username = Rails.application.secrets.sms_appid
    password = Rails.application.secrets.sms_signature
    require 'net/http'
    res = Net::HTTP.post_form(uri, appid: username, to: mobile, project: project, signature: password, vars: @var.to_json)
    p res.body
  end
end