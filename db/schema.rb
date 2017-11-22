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

ActiveRecord::Schema.define(version: 20171121234030) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "academico_proyectos", force: :cascade do |t|
    t.integer "academico_id"
    t.integer "proyecto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "academicos", force: :cascade do |t|
    t.string "nombre"
    t.string "grado"
    t.string "area_interes"
    t.string "correo"
    t.string "link1"
    t.string "link2"
    t.string "link3"
    t.string "descripcion"
    t.string "curriculum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "jornada"
    t.string "imagen"
    t.string "apellido"
    t.string "titulo_profesional"
  end

  create_table "academicos_proyectos", id: false, force: :cascade do |t|
    t.bigint "academico_id", null: false
    t.bigint "proyecto_id", null: false
    t.index ["academico_id", "proyecto_id"], name: "index_academicos_proyectos_on_academico_id_and_proyecto_id"
    t.index ["proyecto_id", "academico_id"], name: "index_academicos_proyectos_on_proyecto_id_and_academico_id"
  end

  create_table "admin_deptos", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "cargo"
    t.string "correo"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_escuelas", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "cargo"
    t.string "correo"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_generals", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "cargo"
    t.string "correo"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "areas_disciplinaria", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.string "descripcion2"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "areas_disciplinarias_academicos", force: :cascade do |t|
    t.string "cargo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "casillas", force: :cascade do |t|
    t.string "nombre"
    t.integer "activo"
    t.string "link"
    t.integer "ver"
    t.string "ubicacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "centro_alumnos", force: :cascade do |t|
    t.integer "anio"
    t.string "presidente"
    t.string "vicepresidente"
    t.string "otros"
    t.string "pagweb"
    t.string "imagen"
    t.string "programa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacto_deptos", force: :cascade do |t|
    t.string "nombre"
    t.string "correo"
    t.integer "consulta"
    t.integer "oferta_laboral"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacto_escuelas", force: :cascade do |t|
    t.string "nombre"
    t.string "correo"
    t.integer "consulta"
    t.integer "oferta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "egresado_destacados", force: :cascade do |t|
    t.string "nombre"
    t.string "programa"
    t.string "contacto_empresa"
    t.string "correo"
    t.string "imagen"
    t.string "opinion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "egresados", force: :cascade do |t|
    t.string "nombre"
    t.string "programa"
    t.string "contacto_empresa"
    t.string "correo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evento_escuelas", force: :cascade do |t|
    t.string "nombre"
    t.string "lugar"
    t.string "descripcion"
    t.string "imagen"
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "funcionario_deptos", force: :cascade do |t|
    t.string "nombre"
    t.string "cargo"
    t.string "correo"
    t.string "imagen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "funcion"
  end

  create_table "funcionario_escuelas", force: :cascade do |t|
    t.string "nombre"
    t.string "cargo"
    t.string "correo"
    t.string "imagen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "funcionario_tipo_deptos", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "funcionario_tipo_escuelas", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "investigacions", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.string "imagen"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mensaje_deptos", force: :cascade do |t|
    t.string "nombre"
    t.string "empresa"
    t.string "cargo"
    t.string "correo"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mensaje_escuelas", force: :cascade do |t|
    t.string "nombre"
    t.string "empresa"
    t.string "cargo"
    t.string "correo"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "noticia_escuelas", force: :cascade do |t|
    t.string "nombre"
    t.string "cuerpo"
    t.string "imagen"
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "oferta", force: :cascade do |t|
    t.date "fecha"
    t.string "cargo"
    t.string "empresa"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pde_escuelas", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.string "imagen"
    t.string "imagen2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programas", force: :cascade do |t|
    t.string "nombre"
    t.string "perfil_egreso"
    t.string "campo_ocupacional"
    t.string "link"
    t.string "descripcion"
    t.string "link_malla"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proyecto_academicos", force: :cascade do |t|
    t.string "cargo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proyectos", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reglamentos", force: :cascade do |t|
    t.string "nombre"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "textos", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.string "imagen"
    t.string "descripcion_imagen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_investigacions", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_programas", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_textos", force: :cascade do |t|
    t.string "unidad"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "academicos_proyectos", "academicos"
  add_foreign_key "academicos_proyectos", "proyectos"
end
