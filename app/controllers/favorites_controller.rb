class FavoritesController < ApplicationController
  def create
    @song = Song.find(params[:song_id])
    if @song.user_id != current_user.id
       @favorite = Favorite.create(user_id: current_user.id, song_id: @song.id)
    end
  end

  def destroy
    @song = Song.find(params[:song_id])
    @favorite = Favorite.find_by(user_id: current_user.id, song_id: @song.id)
    @favorite.destroy
  end
end
