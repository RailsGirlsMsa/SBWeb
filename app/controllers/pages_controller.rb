class PagesController < ApplicationController
 layout "application"
  before_action :find_image, only: [:edit, :update, :show, :delete]
  before_action :find_event, only: [:edit, :update, :show, :delete]


  # Index action to render all events
  def home
    @events = Event.all
  end

  # Index action to render all posts
  def index
    @images = Image.all
    render :images
  end

 	def blogs
	end

end
