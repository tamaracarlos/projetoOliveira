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

ActiveRecord::Schema.define(version: 20160920151847) do

  create_table "administradoras", force: :cascade do |t|
    t.string   "nome"
    t.integer  "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cameras", force: :cascade do |t|
    t.string   "modelos"
    t.string   "marcas"
    t.integer  "quantidade"
    t.string   "localizacao"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "central_de_alarmes", force: :cascade do |t|
    t.string   "modelo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cidades", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "nome"
    t.integer  "conta"
    t.integer  "cidade_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "clientes", ["cidade_id"], name: "index_clientes_on_cidade_id"

  create_table "contratos", force: :cascade do |t|
    t.string   "tipo"
    t.date     "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "controlps", force: :cascade do |t|
    t.time     "horario_arme_desarme"
    t.time     "horario_interfone"
    t.time     "tempo_arme_automatico"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "dvrs", force: :cascade do |t|
    t.string   "modelo"
    t.integer  "canais"
    t.integer  "cameras"
    t.integer  "entradas"
    t.integer  "saidas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string   "nome"
    t.integer  "turno_id"
    t.string   "email"
    t.string   "telefone"
    t.date     "admissao"
    t.date     "experiencia"
    t.integer  "situacao"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "funcionarios", ["turno_id"], name: "index_funcionarios_on_turno_id"

  create_table "hds", force: :cascade do |t|
    t.string   "capacidade"
    t.string   "tempo_de_gravacao"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "internets", force: :cascade do |t|
    t.string   "banda"
    t.string   "contrato"
    t.integer  "cnpj"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sensores", force: :cascade do |t|
    t.string   "modelos"
    t.string   "marcas"
    t.integer  "quantidade"
    t.string   "localizacao"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sindicos", force: :cascade do |t|
    t.string   "nome"
    t.integer  "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teclados", force: :cascade do |t|
    t.string   "tipo"
    t.integer  "quantidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "turnos", force: :cascade do |t|
    t.time     "hora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
