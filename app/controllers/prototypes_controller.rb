class PrototypesController < ApplicationController

  def index
  end

  def show

  end

  def new
    @prototype = Prototype.new
    @prototype.capturedimages.build
  end

  def create
    @prototype = Prototype.create(create_params)
    if @prototype.errors.present?
      flash[:error] = @prototype.errors.full_messages
      redirect_to prototypes_path
    else
      redirect_to root_path
    end
  end

  private

  def create_params
    params.require(:prototype).permit(:title, :catchcopy, :concept, capturedimages_attributes: [:prototype_id, :image, :role]).merge(user_id: current_user.id)
  end

end
