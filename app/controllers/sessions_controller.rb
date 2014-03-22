class SessionsController < ApplicationController
  def new
  end

  def facebook_signup
    user = User.omniauth(env['omniauth.auth'])
    session[:user_id] = user.id
    redirect_to login_path
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to dashboard_path
    else
      flash[:error] = "Invalid email or password"
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    flash[:notice] = "You have successfully logged out"
    redirect_to login_path
  end
end