describe "POST produto" do
  before(:each) do
    @usuario_fixture = carregar_fixture('usuario')
    @email = @usuario_fixture['admin']['email_valido']
    obter_por_email_e_excluir_usuario_por_id(@email)

    @nome_sobrenome = @usuario_fixture['admin']['nome_sobrenome_valido']
    @senha = @usuario_fixture['admin']['senha_valida']
    @admin = "true"

    @json_data_post_usuario = usuario.post_usuario(@nome_sobrenome, @email, @senha, @admin)
    @json_data_post_login = login.post_login(@email, @senha)
    @token_administrador = @json_data_post_login['authorization']

    @numero = gerar_numeros_aleatorios(4)
    @nome_produto = gerar_nome_produto(@numero)
    @preco = gerar_numeros_aleatorios(3)
    @descricao = gerar_descricao_produto(@numero)
    @quantidade = gerar_numeros_aleatorios(2) 
  end

  it "POST produto - Validar status 201 Created e dados retornados com sucesso" do
    @json_data_post_produto = produto.post_produto(@nome_produto, @preco, @descricao, @quantidade, @token_administrador)
    @id_obtido = @json_data_post_produto['_id']
    @message_obtida = @json_data_post_produto['message']
    @message_esperada = "Cadastro realizado com sucesso"

    expect(@json_data_post_produto.code).to eql(201)
    expect(@json_data_post_produto.message).to eql("Created")
    expect(@message_obtida).to include(@message_esperada)
    expect(@id_obtido).to_not be_nil
  end
end
