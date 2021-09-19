class Auth::SigninController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:email])
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Logged in #{user.email}"
    else
      flash[:alert] = "Invalid Email or Password"
      render :new
    end
  end

end
