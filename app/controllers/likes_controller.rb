class LikesController < ApplicationController
  def create
    @prototype = Prototype.find(params[:prototype_id])
    Like.create(user_id: current_user.id, prototype_id: params[:prototype_id])
  end

  def destroy
    @prototype = Prototype.find(params[:prototype_id])
    @prototype.like_user(current_user.id).destroy
  end
end
