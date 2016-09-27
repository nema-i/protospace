class UsersController < ApplicationController

  before_action :set_user, only: :show

  def show
    @user_prototypes = @user.prototypes
  end

  def edit
  end

  def update
    current_user.update(update_params)
    flash[:notice] = 'Mypage Update'
    redirect_to root_path
  end

  private

  def update_params
    params.require(:user).permit(:name, :email, :member, :profile, :works, :avatar)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
