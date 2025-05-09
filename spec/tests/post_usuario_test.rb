describe "POST usuario (administrador)" do
  before(:each) do
    @nome_sobrenome = gerar_nome_sobrenome()
    @email = gerar_email(@nome_sobrenome)
    @senha = gerar_senha()
    @admin = "true"
  end

  after(:each) do
    obter_por_email_e_excluir_usuario_por_id(@email)
  end

  it "POST usuario (administrador) - Validar status 201 Created e dados retornados com sucesso" do
    @json_data_post_usuario = usuario.post_usuario(@nome_sobrenome, @email, @senha, @admin)
    @message_obtida = @json_data_post_usuario['message']
    @id_obtido = @json_data_post_usuario['_id']
    @message_esperada = "Cadastro realizado com sucesso"

    expect(@json_data_post_usuario.code).to eql(201)
    expect(@json_data_post_usuario.message).to eql("Created")
    expect(@message_obtida).to include(@message_esperada)
    expect(@id_obtido).to_not be_nil
  end
end

describe "POST usuario (padrão)" do
  before(:each) do
    @nome_sobrenome = gerar_nome_sobrenome()
    @email = gerar_email(@nome_sobrenome)
    @senha = gerar_senha()
    @admin = "false"
  end

  after(:each) do
    obter_por_email_e_excluir_usuario_por_id(@email)
  end

  it "POST usuario (padrão) - Validar status 201 Created e dados retornados com sucesso" do
    @json_data_post_usuario = usuario.post_usuario(@nome_sobrenome, @email, @senha, @admin)
    @message_obtida = @json_data_post_usuario['message']
    @id_obtido = @json_data_post_usuario['_id']
    @message_esperada = "Cadastro realizado com sucesso"

    expect(@json_data_post_usuario.code).to eql(201)
    expect(@json_data_post_usuario.message).to eql("Created")
    expect(@message_obtida).to include(@message_esperada)
    expect(@id_obtido).to_not be_nil
  end
end
