class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :capturedimages, dependent: :delete_all
  has_many :likes, dependent: :delete_all
  has_many :comments

  accepts_nested_attributes_for :capturedimages, allow_destroy: true

  validates_presence_of :title, :catchcopy, :concept
  acts_as_taggable_on :tags

  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end
end
