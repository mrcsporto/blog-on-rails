class Post < ApplicationRecord
  include PgSearch::Model
  extend FriendlyId
  
  has_rich_text :body

  friendly_id :title, use: :slugged

  validates :title, :author, :body, presence: true

  has_many :comments, dependent: :destroy

  pg_search_scope :search,
                  against: %i[title author body],
                  associated_against: { comments: %i[body] }
end
