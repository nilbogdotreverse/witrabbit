class ReadersController < ApplicationController

  def new
  end

  def create
    @reader = Reader.new(reader_params)
    @reader.save
    redirect_to @reader
  end

  def index
    @readers = Reader.all
  end

  def show
    @reader = Reader.find(params[:id])
    respond_to do |format|
      format.html #responds with default html file
      format.js #this will be the javascript file we respond with
    end
  end

  private
  def reader_params
    params.require(:reader).permit(:name, :bio, :webpage)
  end
end
