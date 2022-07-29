class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @songs = @user.songs

    favorites = Favorite.where(user_id: @user.id).pluck(:song_id)
    @favorites = Song.find(favorites)
  end
end
