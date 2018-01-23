class Book < ApplicationRecord
  belongs_to :user
  has_many :author_books
  has_many :reviews, dependent: :destroy
  has_many :book_categories
  has_many :authors, through: :author_books
  has_many :categories, through: :book_categories
  # has_many :book_images

  # paginates_per 20

  validates :title, presence: true
  validates :description, presence: true
  validates :agreement, presence: true
end
