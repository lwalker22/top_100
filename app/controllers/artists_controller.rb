class ArtistsController < ApplicationController
  before_action :set_billboard
  before_action :set_artist, only: [:show, :update, :edit, :destroy]
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
    render partial: "form"
  end

  def edit
    @artist = Artist.find(params[:id])
    render partial: "form"
  end

  def create
    @artist = Artist.new(artist_params)

    if @artist.save
      redirect_to arists_path
    else
      render :new
    end
  end

  def update
    if @artist.update(artist_params)
      redirect_to @artist
    else
      render :edit
    end
  end

  def destroy
    @artist.destroy
    redirect_to artists_path
  end

  private 

    def set_billboard
      @billboard = Billboard.find(params[:billboard_id])
    end

    def set_artist
      @artist = Artist.find(params[:id])
    end

    def artist_params
      params.require(:artist).permit(:name, :feat_artist, :genre)
    end
end
