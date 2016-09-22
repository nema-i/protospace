class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :name, :member, :profile, :works
  # carrierwave
  mount_uploader :avatar, AvatarUploader
  has_many :prototypes
end
