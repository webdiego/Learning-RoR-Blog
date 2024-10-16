class Article < ApplicationRecord
  include Visible
  # depende destroy mean that if we delete an article, we also delete all of its comments
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
