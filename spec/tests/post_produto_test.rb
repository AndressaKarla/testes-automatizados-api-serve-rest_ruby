describe "Produtos" do
  before(:all) do
    @usuario_fixture = carregar_fixture('usuario')

    email_usuario_padrao_valido1 = @usuario_fixture['padrao_valido1']['email_valido1']
    obter_por_email_e_excluir_usuario_por_id(email_usuario_padrao_valido1)

    email_usuario_admin_valido1 = @usuario_fixture['admin_valido1']['email_valido1']
    obter_por_email_e_excluir_usuario_por_id(email_usuario_admin_valido1)
  end

  context "POST produto 1" do
    before(:all) do
      @nome_sobrenome = @usuario_fixture['admin_valido1']['nome_sobrenome_valido1']
      @email = @usuario_fixture['admin_valido1']['email_valido1']
      @senha = @usuario_fixture['admin_valido1']['senha_valida1']

      @json_data_post_usuario = usuario.post_usuario_admin(@nome_sobrenome, @email, @senha)
      @json_data_post_login = login.post_login(@email, @senha)
      @token_administrador = @json_data_post_login['authorization']

      @numero1 = produto.gerar_numeros_aleatorios(4)
      @nome_produto = "Nome produto 1 - " + "#{@numero1}"
      @preco = produto.gerar_numeros_aleatorios(3)
      @descricao = "Descrição produto 1 - " + "#{@numero1}"
      @quantidade = "1"

      @json_data_post_produto = produto.post_produto(@nome_produto, @preco, @descricao, @quantidade, @token_administrador)
      @id_obtido = @json_data_post_produto['_id']
      @message_obtida = @json_data_post_produto['message']
      @message_esperada = "Cadastro realizado com sucesso"
    end

    it "POST produto 1 - Validar status 201 Created e dados retornados com sucesso" do
      expect(@json_data_post_produto.code).to eq(201)
      expect(@json_data_post_produto.message).to eq("Created")
      expect(@message_obtida).to include(@message_esperada)
      expect(@id_obtido).to_not be_nil
    end
  end
end