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

ActiveRecord::Schema.define(version: 20180318033037) do

  create_table "accounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "creation"
    t.string "person_type"
    t.bigint "person_id"
    t.string "status", default: "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_type", "person_id"], name: "index_accounts_on_person_type_and_person_id"
  end

  create_table "contributions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "code"
    t.decimal "value", precision: 10
    t.boolean "reversal", default: false
    t.bigint "matrix_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["matrix_id"], name: "index_contributions_on_matrix_id"
  end

  create_table "legals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "cnpj"
    t.string "social_name"
    t.string "fantasy_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matrices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "person_type"
    t.bigint "person_id"
    t.string "status", default: "active"
    t.index ["account_id"], name: "index_matrices_on_account_id"
    t.index ["person_type", "person_id"], name: "index_matrices_on_person_type_and_person_id"
  end

  create_table "physicals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "cpf"
    t.string "name"
    t.date "born_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subsidiaries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "parent_type"
    t.bigint "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "person_type"
    t.bigint "person_id"
    t.string "status", default: "active"
    t.index ["parent_type", "parent_id"], name: "index_subsidiaries_on_parent_type_and_parent_id"
    t.index ["person_type", "person_id"], name: "index_subsidiaries_on_person_type_and_person_id"
  end

  create_table "transactions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.decimal "value", precision: 10
    t.string "origin_type"
    t.bigint "origin_id"
    t.string "type_type"
    t.bigint "type_id"
    t.string "destiny_type"
    t.bigint "destiny_id"
    t.boolean "reversal", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destiny_type", "destiny_id"], name: "index_transactions_on_destiny_type_and_destiny_id"
    t.index ["origin_type", "origin_id"], name: "index_transactions_on_origin_type_and_origin_id"
    t.index ["type_type", "type_id"], name: "index_transactions_on_type_type_and_type_id"
  end

  create_table "transfers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.decimal "value", precision: 10
    t.boolean "reversal", default: false
    t.bigint "subsidiary_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subsidiary_id"], name: "index_transfers_on_subsidiary_id"
  end

  add_foreign_key "contributions", "matrices"
  add_foreign_key "matrices", "accounts"
  add_foreign_key "transfers", "subsidiaries"
end
