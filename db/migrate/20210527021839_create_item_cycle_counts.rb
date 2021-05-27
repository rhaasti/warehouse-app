class CreateItemCycleCounts < ActiveRecord::Migration[6.0]
  def change
    create_table :item_cycle_counts do |t|
      t.integer :item_quantity
      t.references :item, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :cycle_count, null: false, foreign_key: true

      t.timestamps
    end
  end
end
