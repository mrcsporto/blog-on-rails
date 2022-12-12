class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, :author, :body, presence: true

  has_many :comments
end
