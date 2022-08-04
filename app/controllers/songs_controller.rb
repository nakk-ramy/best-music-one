class SongsController < ApplicationController
  before_action :song_params_id, except: [:index, :new, :create, :search, :artist]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :move_to_index, only: [:edit, :update, :destroy]

  require 'rspotify'
  RSpotify.authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_SECRET_ID'])

  def index
    @songs = Song.all.page(params[:page]).per(4).order(created_at: :desc)
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

  def show
    tracks = RSpotify::Track.search(@song.title).first(5)
    @track = tracks.find { |track| track.artists[0].name == @song.artist }
    @track = tracks.first if @track.nil?
  end

  def edit
  end

  def update
    if @song.update(song_params)
      redirect_to song_path(@song)
    else
      render :edit
    end
  end

  def destroy
    redirect_to root_path if @song.destroy
  end

  def search
    @songs = Song.all
    if params[:search].present?
    @searchartists = RSpotify::Artist.search(params[:search])
    end
  end 

  def artist
    @song = Song.find_by(artist: params[:id])
    @artist = RSpotify::Artist.search(@song.artist)
  end

  private
  def song_params
    params.require(:song).permit(:title, :artist, :genre, :image).merge(user_id: current_user.id)
  end

  def song_params_id
    @song = Song.find(params[:id])
  end

  def move_to_index
    redirect_to root_path if current_user != @song.user
  end
end