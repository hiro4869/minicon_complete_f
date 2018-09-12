class EventCategoriesController < ApplicationController
  def index
    @events = Event.all
    # render plain: "OK"
  end
  
  def show
    @events = Event.where(event_category_id: params[:id])
  end
end