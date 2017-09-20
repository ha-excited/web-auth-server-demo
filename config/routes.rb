Rails.application.routes.draw do
  scope controller: :wifidog do
    get :ping, :auth, :login, :portal
    post :login_check, as: :login_check
  end
end
