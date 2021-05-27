class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :vendor
      t.string :type
      t.integer :inshape_stock_id
      t.integer :vendor_stock_id
      t.string :purchase_link
      t.integer :purchase_measurement
      t.integer :count_measurement
      t.string :count_type
      t.string :purchase_type

      t.timestamps
    end
  end
end
