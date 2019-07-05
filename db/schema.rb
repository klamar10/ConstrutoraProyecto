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

ActiveRecord::Schema.define(version: 20190705043403) do

  create_table "departamentos", force: :cascade do |t|
    t.integer "piso"
    t.text "caracteristicas"
    t.text "area"
    t.string "tipo"
    t.integer "precio"
    t.integer "mantenis_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mantenis_id"], name: "index_departamentos_on_mantenis_id"
  end

  create_table "mantenis", force: :cascade do |t|
    t.string "nombre"
    t.string "caracteristicas"
    t.text "areacomun"
    t.integer "pisos"
    t.text "ubicacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "tittle"
    t.text "descripttion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regusus", force: :cascade do |t|
    t.text "contrasena"
    t.string "nombre"
    t.string "apellido"
    t.text "email"
    t.integer "dni"
    t.integer "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.text "email"
    t.text "cont"
    t.integer "dni"
    t.date "fech"
    t.integer "telef"
    t.text "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "welcomes", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "email"
    t.integer "dni"
    t.integer "telef"
    t.string "contra"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
