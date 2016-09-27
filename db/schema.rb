ActiveRecord::Schema.define(version: 20160927204639) do

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
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "administradora_id"
    t.integer  "centraldealarme_id"
    t.integer  "contrato_id"
    t.integer  "dvr_id"
    t.integer  "internet_id"
    t.integer  "hd_id"
    t.integer  "teclado_id"
    t.integer  "camera_id"
    t.integer  "nobreak_id"
    t.integer  "controlp_id"
    t.integer  "sensore_id"
    t.integer  "sindico_id"
    t.string   "sindico"
    t.integer  "telefone"
    t.integer  "cnpj"
  end

  add_index "clientes", ["administradora_id"], name: "index_clientes_on_administradora_id"
  add_index "clientes", ["camera_id"], name: "index_clientes_on_camera_id"
  add_index "clientes", ["centraldealarme_id"], name: "index_clientes_on_centraldealarme_id"
  add_index "clientes", ["cidade_id"], name: "index_clientes_on_cidade_id"
  add_index "clientes", ["contrato_id"], name: "index_clientes_on_contrato_id"
  add_index "clientes", ["controlp_id"], name: "index_clientes_on_controlp_id"
  add_index "clientes", ["dvr_id"], name: "index_clientes_on_dvr_id"
  add_index "clientes", ["hd_id"], name: "index_clientes_on_hd_id"
  add_index "clientes", ["internet_id"], name: "index_clientes_on_internet_id"
  add_index "clientes", ["nobreak_id"], name: "index_clientes_on_nobreak_id"
  add_index "clientes", ["sensore_id"], name: "index_clientes_on_sensore_id"
  add_index "clientes", ["sindico_id"], name: "index_clientes_on_sindico_id"
  add_index "clientes", ["teclado_id"], name: "index_clientes_on_teclado_id"

  create_table "contratos", force: :cascade do |t|
    t.string   "tipo"
    t.date     "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "controlps", force: :cascade do |t|
    t.time     "horario_interfone"
    t.time     "tempo_arme_automatico"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.time     "desarme"
    t.time     "arme"
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
    t.string   "nome"
    t.integer  "cliente_id"
  end

  add_index "internets", ["cliente_id"], name: "index_internets_on_cliente_id"

  create_table "nobreaks", force: :cascade do |t|
    t.integer  "capacidade"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "marca"
    t.string   "modelo"
    t.string   "bateria"
    t.integer  "capacidadeBateria"
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
