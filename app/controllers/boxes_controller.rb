class BoxesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @boxes = Box.all
  end
end
