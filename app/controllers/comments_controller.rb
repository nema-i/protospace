class CommentsController < ApplicationController
  def create
    @prototype = Prototype.find(params[:prototype_id])
    Comment.create(create_params)
  end

  private
  def create_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end
