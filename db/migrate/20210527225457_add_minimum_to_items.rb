class AddMinimumToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :minimum, :integer
  end
end
