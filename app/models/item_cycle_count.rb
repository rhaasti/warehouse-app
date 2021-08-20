class ItemCycleCount < ApplicationRecord
  belongs_to :item
  belongs_to :cycle_count
  belongs_to :user
end
