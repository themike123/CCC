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

ActiveRecord::Schema.define(version: 20160614013845) do

  create_table "binnacles", force: :cascade do |t|
    t.string   "nombre_student"
    t.string   "horainicial"
    t.string   "horafinal"
    t.string   "nombre_computer"
    t.string   "tiempo"
    t.string   "fecha"
    t.string   "observaciones"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "complains", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "subject"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "computers", force: :cascade do |t|
    t.string   "equipo"
    t.integer  "idi"
    t.string   "numserie"
    t.string   "marca"
    t.string   "tipo"
    t.string   "modelo"
    t.string   "observaciones"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "has_computers", force: :cascade do |t|
    t.integer  "program_id"
    t.integer  "computer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "has_computers", ["computer_id"], name: "index_has_computers_on_computer_id"
  add_index "has_computers", ["program_id"], name: "index_has_computers_on_program_id"

  create_table "messages", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programs", force: :cascade do |t|
    t.string   "nombre"
    t.string   "version"
    t.string   "plataforma"
    t.string   "arquitectura"
    t.string   "tipo"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "rel_roles_trabajadors", force: :cascade do |t|
    t.integer  "role_id"
    t.integer  "employee_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "rel_roles_trabajadors", ["employee_id"], name: "index_rel_roles_trabajadors_on_employee_id"
  add_index "rel_roles_trabajadors", ["role_id"], name: "index_rel_roles_trabajadors_on_role_id"

  create_table "students", force: :cascade do |t|
    t.string   "nombre"
    t.string   "app"
    t.string   "apm"
    t.string   "estado"
    t.string   "municipio"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "celular"
    t.string   "correo"
    t.string   "matricula"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.string   "p1"
    t.string   "p2"
    t.string   "p3"
    t.string   "p4"
    t.text     "p5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string   "name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
