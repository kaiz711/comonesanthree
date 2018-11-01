class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  validates :comment, presence: true
  validates :title, presence: true
  def post
    self.commentable
  end
end
