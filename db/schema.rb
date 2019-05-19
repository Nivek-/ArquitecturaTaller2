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

ActiveRecord::Schema.define(version: 2019_05_19_042148) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alumnos", force: :cascade do |t|
    t.integer "credito_obtenido"
    t.bigint "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_alumnos_on_usuario_id"
  end

  create_table "asignaturas", force: :cascade do |t|
    t.string "nombre"
    t.integer "creditos"
    t.bigint "profesor_id"
    t.bigint "departamento_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["departamento_id"], name: "index_asignaturas_on_departamento_id"
    t.index ["profesor_id"], name: "index_asignaturas_on_profesor_id"
  end

  create_table "aulas", force: :cascade do |t|
    t.integer "numero_aula"
    t.string "edificio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departamentos", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "horarios", force: :cascade do |t|
    t.integer "bloque"
    t.integer "dia_de_la_semana"
    t.bigint "asignatura_id"
    t.bigint "aula_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asignatura_id"], name: "index_horarios_on_asignatura_id"
    t.index ["aula_id"], name: "index_horarios_on_aula_id"
  end

  create_table "many_alumnos_has_many_asignaturas", force: :cascade do |t|
    t.float "nota"
    t.integer "ponderacion"
    t.bigint "alumno_id"
    t.bigint "asignatura_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alumno_id"], name: "index_many_alumnos_has_many_asignaturas_on_alumno_id"
    t.index ["asignatura_id"], name: "index_many_alumnos_has_many_asignaturas_on_asignatura_id"
  end

  create_table "profesors", force: :cascade do |t|
    t.string "grado_academido"
    t.string "titulo"
    t.date "fecha_contrato"
    t.bigint "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_profesors_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "nombre_usuario"
    t.string "password"
    t.string "email"
    t.integer "telefono"
    t.date "fecha_nacimiento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "alumnos", "usuarios"
  add_foreign_key "horarios", "asignaturas"
  add_foreign_key "profesors", "usuarios"
end
