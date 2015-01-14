class CategoriesController < ApplicationController
  def index
    
  end

  def new
  end

  def edit
  end

  def show
    @creations = Creation.all
    @users = User.all
    @categories = Category.all
    @category = Category.find(params[:id])
  end
end
