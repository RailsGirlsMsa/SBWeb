class EventsController < ApplicationController
  layout "dashboard"
  before_action :find_event, only: [:edit, :update, :show, :delete]

  #This authenticates admin whenever a event is to be created, updated or destroyed.
  before_action :authenticate_admin!, except: [:index, :show]

  # Index action to render all events
  def index
    @events = Event.all
  end

  # New action for creating event
  def new
    @event = Event.new
  end

  # Create action saves the event into database
  def create
    @event = Event.new(event_params)
    if @event.save(event_params)
      flash[:notice] = "Successfully created event!"
      redirect_to event_path(@event)
    else
      flash[:alert] = "Error creating new event!"
      render :new
    end
  end

  # Edit action retrives the event and renders the edit page
  def edit
    @event = Event.find(params[:id])
  end

  # Update action updates the event with the new information
  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(event_params)
      flash[:notice] = "Successfully updated event!"
      redirect_to event_path(@event)
    else
      flash[:alert] = "Error updating event!"
      render :edit
    end
  end

  # The show action renders the individual event after retrieving the the id
  def show
    @events = Event.all
    render :index
  end

  # The destroy action removes the event permanently from the database
  def destroy
    @event = Event.find(params[:id])
    if @event.present?
      @event.destroy
      flash[:notice] = "Successfully deleted event!"
      redirect_to events_path
    else
      flash[:alert] = "Error updating event!"
    end
  end
  private

  def event_params
    params.require(:event).permit(:title, :body)
  end

  def find_event
    @event = Event.find(params[:id])
  end
end
