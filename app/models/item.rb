class Item < ApplicationRecord
  has_many :item_cycle_counts
  belongs_to :vendor
end
