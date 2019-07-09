class Movie < ApplicationRecord
  has_and_belongs_to_many :actors
  has_many_attached :images
  validates :title, presence: true
  paginates_per 3
  has_many :reviews
end
