class BlogController < ApplicationController
  before_action :find_post, only: [:edit, :update, :show, :delete]
  def index
    @posts = Blog.all
end

  def new
    @posts = Blog.new
  end

  def create
    @posts = Blog.new
    if @post.save(post_params)
      flash[:notice] = "Successfully create blog!"
      redirect_to blog_path(@blog)
    else
      flash[:alert] = "Error creating new blog!"
      render :new
    end
  end

  def edit
  end

  def update
    if @blog.update_attributes(blog_params)
      flash[:notice] = "Successfully updated blog!"
      redirect_to blog_path(@blogs)
    else
      flash[:alert] = "Error updating blog!"
      render :edit
    end
  end

  def show
  end

  def destroy
    if @blog.destroy
      flash[:notice] = "Successfully deleted blog!"
      redirect_to blog_path
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
   
