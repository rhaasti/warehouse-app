class AddUserToItemCycleCounts < ActiveRecord::Migration[6.0]
  def change
    add_reference :item_cycle_counts, :user, null: true, foreign_key: true
  end
end
