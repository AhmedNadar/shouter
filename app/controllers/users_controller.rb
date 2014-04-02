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

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end

