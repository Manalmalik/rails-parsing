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

ActiveRecord::Schema.define(version: 2020_10_04_183558) do

  create_table "properties", force: :cascade do |t|
    t.string "county"
    t.string "district"
    t.string "locality"
    t.integer "paon"
    t.string "saon"
    t.integer "postcode"
    t.string "street"
    t.string "city"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sales", force: :cascade do |t|
    t.string "transaction_id"
    t.integer "price"
    t.datetime "transfer_date"
    t.string "property_type"
    t.string "new_build"
    t.string "duration"
    t.string "ppd_status"
    t.string "record_status"
    t.integer "property_id_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["property_id_id"], name: "index_sales_on_property_id_id"
  end

  add_foreign_key "sales", "property_ids"
end
