class PicturesController < ApplicationController

  def show
    @picture_images = Picture.find_by({ :id => params[:id] })
  end

  def index
  end

  def new
  end

end
