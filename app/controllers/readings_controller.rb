class ReadingsController < ApplicationController


def new
end

def create
  @reading = Reading.new(reading_params)
  @reading.save
  redirect_to @reading
end

def index
  @readings = Reading.all
  @readers = Reader.all
end

def show
  @reading = Reading.find(params[:id])
  respond_to do |format|
    format.html #responds with default html file
    format.js #this will be the javascript file we respond with
  end
end

  private
  def reading_params
    params.require(:reading).permit(:title, :description, :fb_link, :date, :flyer)
  end
end
