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

ActiveRecord::Schema.define(version: 20170209200119) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "father_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["father_id"], name: "index_categories_on_father_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "trade"
    t.string   "cnpj"
    t.string   "phone"
    t.string   "cellphone"
    t.string   "address"
    t.string   "operating_hours"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "interests", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_interests_on_product_id"
    t.index ["user_id"], name: "index_interests_on_user_id"
  end

  create_table "newslleters", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parts", force: :cascade do |t|
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_parts_on_category_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "brand"
    t.string   "name"
    t.text     "description"
    t.string   "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.integer  "vehicle_id"
    t.integer  "part_id"
    t.index ["part_id"], name: "index_products_on_part_id"
    t.index ["user_id"], name: "index_products_on_user_id"
    t.index ["vehicle_id"], name: "index_products_on_vehicle_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehicles", force: :cascade do |t|
    t.integer  "vehicle_type"
    t.string   "vehicle_model"
    t.string   "year"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
