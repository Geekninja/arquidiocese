# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150802014827) do

  create_table "cms_page_categories", force: :cascade do |t|
    t.string   "name"
    t.boolean  "status"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "cms_pages", force: :cascade do |t|
    t.string   "title"
    t.text     "resume"
    t.text     "content"
    t.boolean  "publish"
    t.string   "thumbnail"
    t.boolean  "thumbnail_active"
    t.integer  "page_category_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "cms_pages", ["page_category_id"], name: "index_cms_pages_on_page_category_id"

  create_table "cms_parishes", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.string   "priest"
    t.text     "content"
    t.boolean  "publish"
    t.string   "thumb"
    t.string   "thumbnail"
    t.boolean  "thumbnail_active"
    t.text     "resume"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "cms_post_categories", force: :cascade do |t|
    t.string   "name"
    t.boolean  "status"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "cms_posts", force: :cascade do |t|
    t.string   "title"
    t.text     "resume"
    t.text     "content"
    t.boolean  "publish"
    t.boolean  "slider"
    t.string   "thumb"
    t.boolean  "thumb_active"
    t.string   "thumbnail"
    t.boolean  "thumbnail_active"
    t.integer  "post_category_id"
    t.string   "thumb_primary_text"
    t.string   "thumb_second_text"
    t.string   "thumb_third_text"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "cms_posts", ["post_category_id"], name: "index_cms_posts_on_post_category_id"

  create_table "cms_priests", force: :cascade do |t|
    t.integer  "who"
    t.boolean  "publish"
    t.text     "content"
    t.text     "resume"
    t.string   "title"
    t.string   "thumb"
    t.boolean  "thumb_active"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
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
    t.string   "cpf"
    t.string   "name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
