class Author < ApplicationRecord
  has_many :books, through: :author_books
  has_many :author_books

  validates :name, presence: true
  validates :surname, presence: true
  validates :agreement, presence: true
end
