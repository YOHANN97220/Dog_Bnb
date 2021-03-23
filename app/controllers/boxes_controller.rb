class BoxesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @boxes = Box.all
  end

  def show
    @box = Box.find(params[:id])
  end

  def new
    @box = Box.new
  end
end
