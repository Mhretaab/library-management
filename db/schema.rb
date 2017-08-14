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

ActiveRecord::Schema.define(version: 20170723022141) do

  create_table "books", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "uuid"
    t.string   "title"
    t.string   "author"
    t.string   "isbn"
    t.integer  "pages_number"
    t.integer  "total"
    t.integer  "category_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["category_id"], name: "fk_rails_1e86d9c4ec", using: :btree
  end

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "uuid"
    t.string   "category_name"
    t.string   "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "credentials", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "uuid"
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "uuid"
    t.string   "group_name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "issuances", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "uuid"
    t.integer  "book_id"
    t.integer  "issuer_id"
    t.integer  "issued_to_id"
    t.datetime "issuance_date"
    t.datetime "return_date"
    t.text     "remark",        limit: 65535
    t.integer  "status",                      default: 0
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.index ["book_id"], name: "fk_rails_863a6a7b6d", using: :btree
    t.index ["issued_to_id"], name: "fk_rails_5765d1c0fb", using: :btree
    t.index ["issuer_id"], name: "fk_rails_e7fed2784c", using: :btree
  end

  create_table "user_groups", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_user_groups_on_group_id", using: :btree
    t.index ["user_id"], name: "index_user_groups_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "uuid"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "id_card"
    t.string   "phone"
    t.string   "address_line_one"
    t.string   "address_line_two"
    t.string   "zipcode"
    t.integer  "credential_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["credential_id"], name: "fk_rails_024dac10af", using: :btree
  end

  add_foreign_key "books", "categories"
  add_foreign_key "issuances", "books"
  add_foreign_key "issuances", "users", column: "issued_to_id"
  add_foreign_key "issuances", "users", column: "issuer_id"
  add_foreign_key "user_groups", "groups"
  add_foreign_key "user_groups", "users"
  add_foreign_key "users", "credentials"
end
