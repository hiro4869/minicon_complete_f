class EventsController < ApplicationController
  def index
    @events = Event.all
    @events = Event.page(params[:page]).per(2)
  end
end
