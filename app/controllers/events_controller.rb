class EventsController < ApplicationController
  def index
    @events = Event.all
    @price_ranking = Event.all.order('ticket_price')
  end
end
