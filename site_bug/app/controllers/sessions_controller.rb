class SessionsController < ApplicationController
  def new
  end
  def connect
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to '/bugs'
    else
      flash.now[:danger] = 'Invalid username/password combination'
      render 'new'
    end
  end
  def logout
    log_out
    redirect_to login_path
  end
end
