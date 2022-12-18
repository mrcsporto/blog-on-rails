class Comment < ApplicationRecord
  validates :author, :body, presence: true
  paginates_per 10

  belongs_to :post
end
