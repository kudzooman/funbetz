class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_username(params[:username])
    begin
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to home_path, notice: "Logged in!"
      else
        flash.now.alert = "Email or password is invalid"
        render "new"
      end
    rescue BCrypt::Errors::InvalidHash
        flash.now.alert = "Your user in invalid, so sorry"
        render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to home_path, notice: "Logged out!"
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
