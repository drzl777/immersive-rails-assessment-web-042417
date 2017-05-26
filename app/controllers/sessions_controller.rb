class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session.delete :user_id if session[:user_id]
  end

end
