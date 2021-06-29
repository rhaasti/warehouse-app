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

ActiveRecord::Schema.define(version: 2021_06_29_221223) do

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
    t.index ["cycle_count_id"], name: "index_item_cycle_counts_on_cycle_count_id"
    t.index ["item_id"], name: "index_item_cycle_counts_on_item_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "vendor"
    t.string "type"
    t.integer "inshape_stock_id"
    t.integer "vendor_stock_id"
    t.string "purchase_link"
    t.integer "purchase_measurement"
    t.integer "count_measurement"
    t.string "count_type"
    t.string "purchase_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "minimum"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
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

  add_foreign_key "item_cycle_counts", "cycle_counts"
  add_foreign_key "item_cycle_counts", "items"
end
