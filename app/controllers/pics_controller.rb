class PicsController < ApplicationController
  def index
    @pics = Pics.all
  end

  def new
    @pic = Pic.new
  end

  def create
    @pic = Pic.new(pic_params)
  end

  private

  def pic_params
    params.require(:pic).permit(:title, :description)
  end


end
