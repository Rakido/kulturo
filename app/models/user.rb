class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :bookmarks
  has_many :bookmarked_contents, through: :bookmarks, source: :content

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Cloudinary, avatar upload
  mount_uploader :avatar, PhotoUploader


end
