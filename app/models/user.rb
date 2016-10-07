class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :name, :member, :profile, :works
  has_many :prototypes
  has_many :likes

  mount_uploader :avatar, AvatarUploader
end
