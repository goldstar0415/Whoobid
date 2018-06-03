# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_06_02_005255) do

  create_table "auctions", force: :cascade do |t|
    t.string "address", null: false
    t.string "vendor_name", null: false
    t.string "contact", null: false
    t.string "email", null: false
    t.string "property_type", null: false
    t.string "tenure", null: false
    t.datetime "auction_date_time", null: false
    t.string "auction_method", null: false
    t.decimal "reserve_price", null: false
    t.decimal "starting_price", null: false
    t.string "key_features", null: false
    t.text "property_description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "brochure"
    t.string "vendor_id"
    t.string "auction_pack"
    t.index ["user_id"], name: "index_auctions_on_user_id"
  end

  create_table "identities", force: :cascade do |t|
    t.string "name"
    t.string "adress"
    t.date "dob"
    t.string "id_number"
    t.string "document"
    t.string "address_proof"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_identities_on_user_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "main_photo", null: false
    t.string "second_photo"
    t.string "third_photo"
    t.string "fourth_photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "auction_id"
    t.index ["auction_id"], name: "index_photos_on_auction_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.integer "role"
    t.boolean "verification"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "title"
    t.date "dob"
    t.string "postcode"
    t.string "telephone"
    t.integer "payment"
    t.string "company_name"
    t.string "office_number", default: "0"
    t.string "address"
  end

end
