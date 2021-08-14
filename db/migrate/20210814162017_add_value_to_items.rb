class AddValueToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :value, :decimal
  end
end
