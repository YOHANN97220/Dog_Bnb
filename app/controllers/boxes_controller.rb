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

  def create
    @box = Box.new(box_params)
    @box.user = current_user
    if @box.save
      redirect_to @box
    else
      render :new
    end
  end

  private

  def box_params
    params.require(:box).permit(:name, :description, :address, :price_per_day)
  end
end
