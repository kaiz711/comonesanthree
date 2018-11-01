class Post < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :comments, as: :commentable

  paginates_per 3
end
