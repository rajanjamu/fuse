class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.find(user_params)
  end

  def edit
    # @user = 
  end

  private
    def user_params
      params.require(:user).permit(:name, :username, :email)
    end

end
