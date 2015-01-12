class CreationsController < ApplicationController
  def index
    @creations = Creation.all
  end

  def new
  end

  def edit
  end
end
