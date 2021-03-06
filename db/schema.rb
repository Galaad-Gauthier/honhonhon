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

ActiveRecord::Schema.define(version: 20180521131410) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contents", force: :cascade do |t|
    t.text     "body"
    t.string   "title"
    t.string   "uuid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "contents", ["uuid"], name: "index_contents_on_uuid", using: :btree

  create_table "words", force: :cascade do |t|
    t.string   "value"
    t.string   "phonetic_value"
    t.integer  "syllables_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "words", ["phonetic_value"], name: "index_words_on_phonetic_value", using: :btree
  add_index "words", ["syllables_count"], name: "index_words_on_syllables_count", using: :btree
  add_index "words", ["value"], name: "index_words_on_value", using: :btree

  create_table "words_relations", force: :cascade do |t|
    t.integer  "preceding_word_id"
    t.integer  "following_word_id"
    t.integer  "occurence_counter", default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
