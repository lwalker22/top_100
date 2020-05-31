class Billboard < ApplicationRecord
  has_many :artists, dependent: :destroy
  validates :title, presence: true
end
