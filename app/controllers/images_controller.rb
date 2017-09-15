class ImagesController < ApplicationController
    layout "dashboard"
  before_action :find_image, only: [:edit, :update, :show, :delete]

  #This authenticates admin whenever a event is to be created, updated or destroyed.
  before_action :authenticate_admin!, except: [:index, :show]
  # New action for creating post
  def new
    @image = Image.new
  end

  # Create action saves the post into database
  def create
    @image = Image.new(image_params)
    if @image.save(image_params)
      flash[:notice] = "Successfully created image!"
      redirect_to image_path(@image)
    else
      flash[:alert] = "Error creating new image!"
      render :new
    end
  end

  # Edit action retrives the post and renders the edit page
  def edit
    @image = Image.find(params[:id])
  end

  # Update action updates the post with the new information
  def update
    @image = Image.find(params[:id])
    if @image.update_attributes(image_params)
      flash[:notice] = "Successfully updated image!"
      redirect_to image_path(@image)
    else
      flash[:alert] = "Error updating image!"
      render :edit
    end
  end

  # The show action renders the individual post after retrieving the the id
  def show
    @images = Image.all
  end

  # The destroy action removes the post permanently from the database
  def destroy
    @image = Image.find(params[:id])
    if @image.destroy
      flash[:notice] = "Successfully deleted image!"
      redirect_to images_path
    else
      flash[:alert] = "Error updating image!"
    end
  end

  private

  def image_params
    params.require(:image).permit(:title, :body)
  end

  def find_image
    @image = Image.find(params[:id])
  end
end
