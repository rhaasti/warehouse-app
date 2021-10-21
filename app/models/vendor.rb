class Vendor < ApplicationRecord
  has_many :items
  validates :name, uniqueness: true
  validates :name, presence: true
end
