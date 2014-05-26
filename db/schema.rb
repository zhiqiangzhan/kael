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

ActiveRecord::Schema.define(version: 20140526060006) do

  create_table "message_configs", force: true do |t|
    t.string   "group"
    t.string   "biz_type"
    t.string   "name"
    t.string   "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "message_templates", force: true do |t|
    t.integer  "message_config_id"
    t.string   "template"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "message_templates", ["message_config_id"], name: "index_message_templates_on_message_config_id", using: :btree

  create_table "template_strategies", force: true do |t|
    t.integer  "message_config_id"
    t.string   "strategy_type"
    t.string   "language"
    t.string   "script"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "template_strategies", ["message_config_id"], name: "index_template_strategies_on_message_config_id", using: :btree

end
