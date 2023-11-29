describe "Usuarios" do
  before(:all) do
    @usuario_fixture = carregar_fixture('usuario')

    email_usuario_padrao_valido1 = @usuario_fixture['padrao_valido1']['email_valido1']
    obter_por_email_e_excluir_usuario_por_id(email_usuario_padrao_valido1)

    email_usuario_admin_valido1 = @usuario_fixture['admin_valido1']['email_valido1']
    obter_por_email_e_excluir_usuario_por_id(email_usuario_admin_valido1)
  end

  context "POST usuario (administrador)" do
    before(:all) do
      @nome_sobrenome = @usuario_fixture['admin_valido1']['nome_sobrenome_valido1']
      @email = @usuario_fixture['admin_valido1']['email_valido1']
      @senha = @usuario_fixture['admin_valido1']['senha_valida1']

      @json_data_post_usuario = usuario.post_usuario_admin(@nome_sobrenome, @email, @senha)
      @message_obtida = @json_data_post_usuario['message'];
      @id_obtido = @json_data_post_usuario['_id']
      @message_esperada = "Cadastro realizado com sucesso";
    end

    it "POST usuario (administrador) - Validar status 201 Created e dados retornados com sucesso" do
      expect(@json_data_post_usuario.code).to eq(201)
      expect(@json_data_post_usuario.message).to eq("Created")
      expect(@message_obtida).to include(@message_esperada)
      expect(@id_obtido).to_not be_nil
    end
  end

  context "POST usuario (padrão 1)" do
    before(:all) do
      @nome_sobrenome = @usuario_fixture['padrao_valido1']['nome_sobrenome_valido1']
      @email = @usuario_fixture['padrao_valido1']['email_valido1']
      @senha = @usuario_fixture['padrao_valido1']['senha_valida1']

      @json_data_post_usuario = usuario.post_usuario_padrao(@nome_sobrenome, @email, @senha)
      @message_obtida = @json_data_post_usuario['message'];
      @id_obtido = @json_data_post_usuario['_id']
      @message_esperada = "Cadastro realizado com sucesso";
    end

    it "POST usuario (padrão 1) - Validar status 201 Created e dados retornados com sucesso" do
      expect(@json_data_post_usuario.code).to eq(201)
      expect(@json_data_post_usuario.message).to eq("Created")
      expect(@message_obtida).to include(@message_esperada)
      expect(@id_obtido).to_not be_nil
    end
  end
end