class ItemCycleCount < ApplicationRecord
  belongs_to :item
  belongs_to :user
  belongs_to :cycle_count
end
