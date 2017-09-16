class BlogsController < ApplicationController
	    layout "dashboard"
  before_action :find_blog, only: [:edit, :update, :show, :delete]

  #This authenticates admin whenever a event is to be created, updated or destroyed.
  before_action :authenticate_admin!, except: [:index, :show]
  # New action for creating post
  def new
    @blog = Blog.new
  end

  # Create action saves the post into database
  def create
    @blog = Blog.new(blog_params)
    if @blog.save(blog_params)
      flash[:notice] = "Successfully created blog!"
      redirect_to blog_path(@blog)
    else
      flash[:alert] = "Error creating new blog!"
      render :new
    end
  end

  # Edit action retrives the post and renders the edit page
  def edit
    @blog = Blog.find(params[:id])
  end

  # Update action updates the post with the new information
  def update
    @blog = Blog.find(params[:id])
    if @blog.update_attributes(blog_params)
      flash[:notice] = "Successfully updated blog!"
      redirect_to blog_path(@blog)
    else
      flash[:alert] = "Error updating blog!"
      render :edit
    end
  end

  # The show action renders the individual post after retrieving the the id
  def show
    @blogs = Blog.all
  end

  # The destroy action removes the post permanently from the database
  def destroy
    @blog = Blog.find(params[:id])
    if @blog.destroy
      flash[:notice] = "Successfully deleted blog!"
      redirect_to blogs_path
    else
      flash[:alert] = "Error updating blog!"
    end
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :body)
  end

  def find_blog
    @blog = Blog.find(params[:id])
  end
end
