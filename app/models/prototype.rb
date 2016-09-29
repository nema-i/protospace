class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :capturedimages, dependent: :delete_all

  accepts_nested_attributes_for :capturedimages

  validates_presence_of :title, :catchcopy, :concept
end
