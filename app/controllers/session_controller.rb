class SessionController < ApplicationController
  def new
  end

  def create
    # find user by email that typed in the input field
    user = User.find_by email: params[:email]
    # if email found and password is matched, give this user's id to session[:user_id]
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user.id)
    # if user email or password does not match, show an error, and redirect_to to login page again
    else
      flash[:error] = "Incorrect email or password"
      redirect_to login_path
    end
  end #create end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
