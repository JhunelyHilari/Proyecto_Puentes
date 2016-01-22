class SessionsController < ApplicationController
  
  def new

  end

  def create
     user = User.find_by(Correo: params[:session][:Correo].downcase)
    if user && user.authenticate(params[:session][:Contraseña])
    	log_in user
    	redirect_to user

    else
      # Create an error message.
      flash[:danger] = 'Correo y/o contraseña inválidos' 
      render 'new'
    end
  end

  def destroy
  	log_out
    redirect_to root_url
  end

end

    
