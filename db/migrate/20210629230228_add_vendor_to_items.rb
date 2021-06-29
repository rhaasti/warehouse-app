class AddVendorToItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :items, :vendor, null: false, foreign_key: true
  end
end
