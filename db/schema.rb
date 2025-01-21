# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2025_01_21_182419) do
  create_table "stocks", force: :cascade do |t|
    t.string "stock_name"
    t.integer "stock_price"
    t.integer "quantity_available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.float "brokerage"
    t.float "gst"
    t.float "transaction_value"
    t.string "transaction_type"
    t.integer "quantity"
    t.integer "user_details_id", null: false
    t.integer "stocks_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "stock_price"
    t.index ["stocks_id"], name: "index_transactions_on_stocks_id"
    t.index ["user_details_id"], name: "index_transactions_on_user_details_id"
  end

  create_table "user_details", force: :cascade do |t|
    t.integer "aadhar_card_number"
    t.string "pan_card_number"
    t.string "name"
    t.string "mobile_number"
    t.string "email"
    t.text "address"
    t.integer "bank_account_number"
    t.string "ifsc_code"
    t.string "upi_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "transactions", "stocks", column: "stocks_id"
  add_foreign_key "transactions", "user_details", column: "user_details_id"
end
