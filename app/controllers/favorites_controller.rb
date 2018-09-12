class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.where(user_id: current_user.id)
    
    # render plain: "OK favorites"
  end
  
  def create
    user_id = current_user.id
    event_id = params[:event_id]
    
    Favorite.create(user_id: user_id, event_id: event_id)
    redirect_to root_path
  end
  
  def destroy
    @favorite = Favorite.where(user_id: current_user.id).where(event_id: params[:id])
    @favorite.delete_all
    redirect_to root_path
  end
end