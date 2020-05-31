class Song < ApplicationRecord
  belongs_to :artist
  validates :name, :length, :rank, :albumn, presence: true
  validates :length, numericality: true
end
