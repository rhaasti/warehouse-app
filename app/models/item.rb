class Item < ApplicationRecord
  has_many :item_cycle_counts
  belongs_to :vendor
  belongs_to :user
  validates :name, uniqueness: true
  validates :name, presence: true
  validates :purchase_measurement, presence: true
  validates :count_measurement, presence: true
  validates :count_type, presence: true
  validates :purchase_type, presence: true
  validates :minimum, presence: true
  validates :value, presence: true
end
