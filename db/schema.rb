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

ActiveRecord::Schema[7.0].define(version: 2024_01_08_170552) do
  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.integer "external_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leads", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "category_id"
    t.integer "exclusive_for_product_id"
    t.string "source"
    t.integer "size"
    t.string "company_name"
    t.integer "type_id"
    t.string "campaign"
    t.integer "status_id"
    t.datetime "bttc", precision: nil
    t.string "timezone"
    t.integer "phone"
    t.boolean "express"
    t.boolean "enterprise"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "claimed"
    t.boolean "highlighted"
  end

  create_table "notes", force: :cascade do |t|
    t.integer "lead_id"
    t.string "author"
    t.datetime "creation_date", precision: nil
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "external_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string "name"
    t.string "short"
    t.integer "external_id"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.string "short"
    t.integer "external_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
