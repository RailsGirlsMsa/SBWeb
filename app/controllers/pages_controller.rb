class PagesController < ApplicationController
  before_action :find_image, only: [:edit, :update, :show, :delete]
	def home
		puts "Welcome to SwahiliBox"

	end

  # Index action to render all posts
  def index
    @images = Image.all
    render :images
  end

 	def blogs
	end

  end
