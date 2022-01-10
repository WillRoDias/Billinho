# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_17_140623) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aluno_tables", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.date "data_nasc"
    t.integer "cell"
    t.string "genero"
    t.string "meio_pag"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "faturas_tables", force: :cascade do |t|
    t.bigint "matriculas_tables_id"
    t.float "valor_faturas"
    t.date "data_vencimento"
    t.integer "id_matricula"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["matriculas_tables_id"], name: "index_faturas_tables_on_matriculas_tables_id"
  end

  create_table "ies", force: :cascade do |t|
    t.string "nome"
    t.string "cnpj"
    t.string "tipo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ies_tables", force: :cascade do |t|
    t.string "nome"
    t.string "cnpj"
    t.string "tipo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "matriculas_tables", force: :cascade do |t|
    t.bigint "aluno_tables_id"
    t.bigint "ies_tables_id"
    t.float "v_total"
    t.integer "qtd_faturas"
    t.integer "vencimento"
    t.string "nome_curso"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["aluno_tables_id"], name: "index_matriculas_tables_on_aluno_tables_id"
    t.index ["ies_tables_id"], name: "index_matriculas_tables_on_ies_tables_id"
  end

end
