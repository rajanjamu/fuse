class CreationsController < ApplicationController
  def index
    @creations = Creation.all
    @users = User.all
    @categories = Category.all
  end

  def new
    @creations = Creation.all
    @users = User.all
    @categories = Category.all
    @creation = Creation.new
    @category_names = Category.pluck(:name)
    @user_names = User.pluck(:name)
  end

  def create
    parameters = params[:creation]
    @category_id = Category.find_by(name: parameters["category_id"]).id
    @user_id = User.find_by(name: parameters["user_id"]).id
    @creation = Creation.new(creation_params)
    @creation.category_id = @category_id
    @creation.user_id = @user_id
    @creation.save
    redirect_to @creation
  end

  def edit
  end

  def show
    @creations = Creation.all
    @users = User.all
    @categories = Category.all
    @creation = Creation.find(params[:id])
  end

  def destroy
    Creation.find(params[:id]).destroy
    redirect_to root_url
  end

  private
    def creation_params
      params.require(:creation).permit(:name, :description)
    end
end
