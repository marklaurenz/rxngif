class PicturesController < ApplicationController

  def show
    @picture_images = Picture.find_by({ :id => params[:id] })
  end

  def index
  end

  def new
  end

  def create
    Picture.all.each do |pic|
      p = Picture.new
      p.source = pic[:source]
      p.caption = pic[:caption]
      p.save
      end
    redirect_to("http://localhost:3000/all_pictures")
  end

end
