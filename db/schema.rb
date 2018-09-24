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

ActiveRecord::Schema.define(version: 2018_09_06_072144) do

  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.text "role"
    t.integer "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_accounts_on_department_id"
  end

  create_table "attributes", force: :cascade do |t|
    t.string "name"
    t.integer "inventory_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inventory_id"], name: "index_attributes_on_inventory_id"
  end

  create_table "demands", force: :cascade do |t|
    t.string "name"
    t.string "quantity"
    t.integer "inventory_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inventory_id"], name: "index_demands_on_inventory_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.text "functions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.text "post"
    t.integer "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_employees_on_department_id"
  end

  create_table "features", force: :cascade do |t|
    t.string "name"
    t.string "content"
    t.integer "inventory_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inventory_id"], name: "index_features_on_inventory_id"
  end

  create_table "inventories", force: :cascade do |t|
    t.string "name"
    t.text "describtion"
    t.integer "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "quantity"
    t.date "arrival_date"
    t.string "nature"
    t.decimal "unit_cost"
    t.index ["department_id"], name: "index_inventories_on_department_id"
  end

  create_table "lends", force: :cascade do |t|
    t.string "asset_name"
    t.string "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_assets", force: :cascade do |t|
    t.string "name"
    t.string "quantity"
    t.integer "inventory_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inventory_id"], name: "index_order_assets_on_inventory_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "name"
    t.string "quantity"
    t.integer "inventory_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inventory_id"], name: "index_orders_on_inventory_id"
  end

  create_table "reports", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.integer "inventory_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inventory_id"], name: "index_reports_on_inventory_id"
  end

  create_table "sales", force: :cascade do |t|
    t.string "asset_name"
    t.text "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
