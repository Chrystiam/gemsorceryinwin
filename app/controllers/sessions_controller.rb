class SessionsController < ApplicationController
  def new
  end

  def create
  	user = login(params[:username], params[:password], params[:remember_me])
  	if user
  		redirect_back_or_to root_url, :notice => "sesion iniciada!"
  	else
  		flash.now.alert = "EL email o la clave son incorrectas"
  		render :new	
  	end
  end

  def destroy
  	logout
  	redirect_to root_url, :notice => "sesion finalizada"
  end
end
