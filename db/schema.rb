# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_20_202646) do

  create_table "cycle_counts", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "item_cycle_counts", force: :cascade do |t|
    t.integer "item_quantity"
    t.integer "item_id", null: false
    t.integer "cycle_count_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.index ["cycle_count_id"], name: "index_item_cycle_counts_on_cycle_count_id"
    t.index ["item_id"], name: "index_item_cycle_counts_on_item_id"
    t.index ["user_id"], name: "index_item_cycle_counts_on_user_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "internal_stock_id"
    t.integer "vendor_stock_id"
    t.string "purchase_link"
    t.integer "purchase_measurement"
    t.integer "count_measurement"
    t.string "count_type"
    t.string "purchase_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "minimum"
    t.integer "vendor_id", null: false
    t.decimal "value"
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_items_on_user_id"
    t.index ["vendor_id"], name: "index_items_on_vendor_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vendors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "item_cycle_counts", "cycle_counts"
  add_foreign_key "item_cycle_counts", "items"
  add_foreign_key "item_cycle_counts", "users"
  add_foreign_key "items", "users"
  add_foreign_key "items", "vendors"
end
