# https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx3f5e03a894a3a50c&redirect_uri=http%3A%2F%2Fwww.bekii.in%2Fusers&response_type=code&scope=snsapi_userinfo#wechat_redirect
class WechatsController < ApplicationController
  wechat_api
  # For details on the DSL available within this file, see https://github.com/Eric-Guo/wechat#rails-responder-controller-dsl
  wechat_responder

  def signature
    @signature = wechat.jsapi_ticket.signature(params[:url])
    render json: @signature
  end

  # on :text do |request, content|
  #   request.reply.text "echo: #{content}" # Just echo
  # end
end
