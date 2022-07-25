class SongsController < ApplicationController
  before_action :song_params_id, except: [:index, :new, :create, :search]
  before_action :authenticate_user!, except: [:index]

  require 'rspotify'
  RSpotify.authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_SECRET_ID'])

  def index
    @songs = Song.order(created_at: :desc)
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to root_path
    else
      render :new
    end
  end

  def search
    @songs = Song.all
    if params[:search].present?
    @searchartists = RSpotify::Artist.search(params[:search])
    end
  end 

  private
  def song_params
    params.require(:song).permit(:title, :artist, :genre, :image).merge(user_id: current_user.id)
  end

  def song_params_id
    @song = Song.find(params[:id])
  end
end
