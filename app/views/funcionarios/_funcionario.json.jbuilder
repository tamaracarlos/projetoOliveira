json.extract! funcionario, :id, :nome, :turno_id, :email, :telefone, :admissao, :experiencia, :situacao, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)