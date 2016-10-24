class TagsController < ApplicationController
  def index
    @tags = ActsAsTaggableOn::Tag.most_used
  end

  def show
    @tag = ActsAsTaggableOn::Tag.find_by(name: params[:id])
    @prototypes = Prototype.tagged_with(@tag.name)
  end
end
