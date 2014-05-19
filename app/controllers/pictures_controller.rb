class PicturesController < ApplicationController

  def show
    @picture = Picture.find_by({ :id => params[:id] })
  end

  def index
  end

  def new
  end

  def create
    # Picture.all.each do |pic|
    p = Picture.new
    p.source = params[:source]
    p.caption = params[:caption]
    p.save
      # end
    redirect_to("http://localhost:3000/all_pictures")
  end

  def destroy
    picture = Picture.find(params[:id])
    picture.destroy
    redirect_to("http://localhost:3000/all_pictures")
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    picture = Picture.find(params[:id])
    picture.source = params[:source]
    picture.caption = params[:caption]
    picture.save

    redirect_to("http://localhost:3000/picture_details/#{picture.id}")
  end

end
