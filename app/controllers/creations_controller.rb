class CreationsController < ApplicationController
  def index
    @creations = Creation.all
    @users = User.all
  end

  def new
  end

  def edit
  end

  def show
    @creations = Creation.all
    @users = User.all
    @creation = Creation.find(params[:id])
  end

  private
    def creation_params
      params.require(:creation).permit(:name, :description)
    end
end
