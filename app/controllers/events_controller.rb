class EventsController < ApplicationController
  def index
    @events = Event.all
    if current_user.present?
      @favorites = Favorite.where(user_id: current_user.id)
    end
  end
end
