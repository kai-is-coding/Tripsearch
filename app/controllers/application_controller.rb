class ApplicationController < ActionController::Base

  # run fetch_user before running any other method
  before_action :fetch_user
  def fetch_user

    # if the session[:user_id] exist, assign this id to the @current_user
    if session[:user_id].present?
      @current_user = User.find_by id: session[:user_id]
    end
    # if the session[:user_id] does not exist, assign nill to session[:user_id]
    unless @current_user.present?
      session[:user_id] = nil
    end
  end #fetch_user end

  # check if the user is logged in
  def check_if_logged_in

  end

  # check if the user is admin
  def check_if_it_is_admin

  end
end
