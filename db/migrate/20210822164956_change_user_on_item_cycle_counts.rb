class ChangeUserOnItemCycleCounts < ActiveRecord::Migration[6.0]
  def change
    change_column :item_cycle_counts, :user_id, :integer, null: false, foreign_key: true
  end
end
