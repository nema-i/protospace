class PrototypesController < ApplicationController
  before_action :set_prototype, only: :show

  def index
    @prototypes = Prototype.includes(:user)
  end

  def show
    @prototype_user = @prototype.user
    @sub_images = @prototype.capturedimages.sub
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

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end

end
