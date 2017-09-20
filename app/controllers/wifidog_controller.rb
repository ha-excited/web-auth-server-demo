class WifidogController < ApplicationController
  protect_from_forgery except: :login_check
  def ping
    render plain: 'Pong'
  end

  def auth
    render plain: 'Auth: 1'
  end

  def login
  end

  def login_check
    redirect_to "http://#{params[:gw_address]}:#{params[:gw_port]}/wifidog/auth?token=AABBCCDD"
  end

  def portal
    render plain: 'Welcome'
  end
end
