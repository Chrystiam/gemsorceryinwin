class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def no_logueado
  	redirect_to login_url, alert: "primero deves loguearte para ingresar"
  end
end
