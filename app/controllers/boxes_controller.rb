class BoxesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @boxes = Box.near(params[:query], params[:km])
    else
      @boxes = Box.all
    end
    @markers = @boxes.geocoded.map do |box|
      {
        lat: box.latitude,
        lng: box.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { box: box }),
        image_url: helpers.asset_url(box.image_url)
      }
    end
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
