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
  end

  def edit
  end

  def show
    @creations = Creation.all
    @users = User.all
    @categories = Category.all
    @creation = Creation.find(params[:id])
  end

  private
    def creation_params
      params.require(:creation).permit(:name, :description)
    end
end
