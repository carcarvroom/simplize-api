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

ActiveRecord::Schema.define(version: 2020_09_11_040555) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "trackable_type"
    t.bigint "trackable_id"
    t.string "owner_type"
    t.bigint "owner_id"
    t.string "key"
    t.text "parameters"
    t.string "recipient_type"
    t.bigint "recipient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id", "owner_type"], name: "index_activities_on_owner_id_and_owner_type"
    t.index ["owner_type", "owner_id"], name: "index_activities_on_owner_type_and_owner_id"
    t.index ["recipient_id", "recipient_type"], name: "index_activities_on_recipient_id_and_recipient_type"
    t.index ["recipient_type", "recipient_id"], name: "index_activities_on_recipient_type_and_recipient_id"
    t.index ["trackable_id", "trackable_type"], name: "index_activities_on_trackable_id_and_trackable_type"
    t.index ["trackable_type", "trackable_id"], name: "index_activities_on_trackable_type_and_trackable_id"
  end

  create_table "boards", force: :cascade do |t|
    t.string "name"
    t.string "board_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "team_id"
    t.bigint "user_id"
    t.index ["team_id"], name: "index_boards_on_team_id"
    t.index ["user_id"], name: "index_boards_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "description"
    t.bigint "user_id"
    t.bigint "task_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["task_id"], name: "index_comments_on_task_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string "name"
    t.bigint "board_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "position"
    t.index ["board_id"], name: "index_lists_on_board_id"
  end

  create_table "members", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "team_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["team_id"], name: "index_members_on_team_id"
    t.index ["user_id"], name: "index_members_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "owner_id"
    t.text "description"
    t.string "priority"
    t.string "status"
    t.boolean "resolved"
    t.bigint "list_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "board_id"
    t.string "title"
    t.index ["board_id"], name: "index_tasks_on_board_id"
    t.index ["list_id"], name: "index_tasks_on_list_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "organization"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "address"
    t.string "organization"
    t.string "position"
    t.string "location"
    t.string "profile_img"
    t.string "description"
    t.string "age"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "boards", "teams"
  add_foreign_key "boards", "users"
  add_foreign_key "comments", "tasks"
  add_foreign_key "comments", "users"
  add_foreign_key "lists", "boards"
  add_foreign_key "members", "teams"
  add_foreign_key "members", "users"
  add_foreign_key "tasks", "boards"
  add_foreign_key "tasks", "lists"
end
