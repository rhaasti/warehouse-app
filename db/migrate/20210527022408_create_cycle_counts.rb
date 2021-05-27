class CreateCycleCounts < ActiveRecord::Migration[6.0]
  def change
    create_table :cycle_counts do |t|

      t.timestamps
    end
  end
end
