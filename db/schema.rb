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

ActiveRecord::Schema.define(version: 2020_04_18_172323) do

  create_table "assignments", force: :cascade do |t|
    t.integer "from_id"
    t.integer "to_id"
    t.integer "gift_list_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gift_list_id"], name: "index_assignments_on_gift_list_id"
  end

  create_table "exchanges", force: :cascade do |t|
    t.integer "owner_id"
    t.integer "user_id", null: false
    t.integer "assignment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["assignment_id"], name: "index_exchanges_on_assignment_id"
    t.index ["user_id"], name: "index_exchanges_on_user_id"
  end

  create_table "gift_links", force: :cascade do |t|
    t.string "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gift_lists", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.integer "gift_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gift_id"], name: "index_gift_lists_on_gift_id"
  end

  create_table "gifts", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "gift_link_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gift_link_id"], name: "index_gifts_on_gift_link_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.boolean "is_registered"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "exchanges", "assignments"
  add_foreign_key "exchanges", "users"
  add_foreign_key "gift_lists", "gifts"
  add_foreign_key "gifts", "gift_links"
end
