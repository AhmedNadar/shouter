class UsersController < ApplicationController
  respond_to :html
  def show
    @user = User.find(params[:id])
    @shouts = @user.shouts
  end
  def new
    @user = User.new
  end

  def create
    @user = sign_up(user_params)
    sign_in(@user) do
      respond_with(@user, location: root_path) and return
    end
    render :new
  end
  
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash.notice = 'User info was successfully updated.'
      redirect_to user_path
    else
      flash.alert = 'User info was not updated.'
      redirect_to :back
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end

