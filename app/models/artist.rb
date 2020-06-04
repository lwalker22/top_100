class Artist < ApplicationRecord
  belongs_to :billboard
  has_many :songs, dependent: :destroy
  validates :name, :genre, presence: true
  # validates :feat_artist, length:{ minimum: 2 }, allow_nil: true
  #need to allow nil for feat_artist
end
