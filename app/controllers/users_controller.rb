class UsersController < ApplicationController
  before_action :check_if_logged_in, except: [:new, :create]
  before_action :check_if_it_is_admin, only: [:index]
  def new
    @user = User.new
  end

  def create

    @user = User.create user_params
    # if register successfully, jump to user show page
    if @user.persisted?
      session[:user_id] = @user.id

      # redirect_to user_path(@user.id)
    # if there is an error show the form again
    else
      render :new
    end
  end #create end

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    user = User.find params[:id]
    user.update user_params
    redirect_to user_path(user.id)
  end

  def destroy
    User.destroy params[:id]
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)


  end
end
