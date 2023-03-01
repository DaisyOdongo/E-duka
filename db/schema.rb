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

ActiveRecord::Schema[7.0].define(version: 2023_03_01_024454) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cartitems", force: :cascade do |t|
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cart_id", null: false
    t.bigint "product_id", null: false
    t.index ["cart_id"], name: "index_cartitems_on_cart_id"
    t.index ["product_id"], name: "index_cartitems_on_product_id"
  end

  create_table "carts", force: :cascade do |t|
    t.string "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "shop_id", null: false
    t.index ["shop_id"], name: "index_categories_on_shop_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "amount_cent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "shop_id", null: false
    t.bigint "category_id", null: false
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["shop_id"], name: "index_products_on_shop_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "email"
    t.string "description"
    t.string "payment_option"
    t.string "payment_details"
    t.string "activation_code", default: [], array: true
    t.boolean "activated"
    t.datetime "activated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id", null: false
    t.index ["category_id"], name: "index_shops_on_category_id"
  end

  add_foreign_key "cartitems", "carts"
  add_foreign_key "cartitems", "products"
  add_foreign_key "categories", "shops"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "shops"
  add_foreign_key "shops", "categories"
end
