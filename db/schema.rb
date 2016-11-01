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

ActiveRecord::Schema.define(version: 20161101191336) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "servers", force: :cascade do |t|
    t.string   "name",                                             null: false
    t.text     "description"
    t.string   "logo_url"
    t.string   "base_url"
    t.string   "cloudthreads_version"
    t.integer  "user_count",               default: 0,             null: false
    t.integer  "local_board_count",        default: 0,             null: false
    t.integer  "local_thread_count",       default: 0,             null: false
    t.integer  "local_message_count",      default: 0,             null: false
    t.integer  "syndicated_board_count",   default: 0,             null: false
    t.integer  "syndicated_thread_count",  default: 0,             null: false
    t.integer  "syndicated_message_count", default: 0,             null: false
    t.string   "registration_status",      default: "in-review",   null: false
    t.string   "availability_status",      default: "unavailable", null: false
    t.string   "announcement_status",      default: "announced",   null: false
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.index ["announcement_status"], name: "index_servers_on_announcement_status", using: :btree
    t.index ["availability_status"], name: "index_servers_on_availability_status", using: :btree
    t.index ["local_board_count"], name: "index_servers_on_local_board_count", using: :btree
    t.index ["local_message_count"], name: "index_servers_on_local_message_count", using: :btree
    t.index ["local_thread_count"], name: "index_servers_on_local_thread_count", using: :btree
    t.index ["name"], name: "index_servers_on_name", using: :btree
    t.index ["registration_status"], name: "index_servers_on_registration_status", using: :btree
    t.index ["syndicated_board_count"], name: "index_servers_on_syndicated_board_count", using: :btree
    t.index ["syndicated_message_count"], name: "index_servers_on_syndicated_message_count", using: :btree
    t.index ["syndicated_thread_count"], name: "index_servers_on_syndicated_thread_count", using: :btree
    t.index ["user_count"], name: "index_servers_on_user_count", using: :btree
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "role"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.string   "invited_by_type"
    t.integer  "invited_by_id"
    t.integer  "invitations_count",      default: 0
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["invitation_token"], name: "index_users_on_invitation_token", unique: true, using: :btree
    t.index ["invitations_count"], name: "index_users_on_invitations_count", using: :btree
    t.index ["invited_by_id"], name: "index_users_on_invited_by_id", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
