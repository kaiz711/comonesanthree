class Board < ApplicationRecord
  mount_uploader :boardimage, ImageUploader

  has_many :comments, as: :commentable
end
