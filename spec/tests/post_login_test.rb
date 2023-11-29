describe "Login" do
  before(:all) do
    @usuario_fixture = carregar_fixture('usuario')

    email_usuario_padrao_valido1 = @usuario_fixture['padrao_valido1']['email_valido1']
    obter_por_email_e_excluir_usuario_por_id(email_usuario_padrao_valido1)

    email_usuario_admin_valido1 = @usuario_fixture['admin_valido1']['email_valido1']
    obter_por_email_e_excluir_usuario_por_id(email_usuario_admin_valido1)
  end

  context "POST login (administrador)" do
    before(:all) do
      @nome_sobrenome = @usuario_fixture['admin_valido1']['nome_sobrenome_valido1']
      @email = @usuario_fixture['admin_valido1']['email_valido1']
      @senha = @usuario_fixture['admin_valido1']['senha_valida1']

      @json_data_post_usuario = usuario.post_usuario_admin(@nome_sobrenome, @email, @senha)
      @json_data_post_login = login.post_login(@email, @senha)
      @message_obtida = @json_data_post_login['message'];
      @authorization_obtida = @json_data_post_login['authorization'];
      @message_esperada = "Login realizado com sucesso";
    end

    it "POST login (administrador) - Validar status 200 OK e dados retornados com sucesso" do
      expect(@json_data_post_login.code).to eq(200)
      expect(@json_data_post_login.message).to eq("OK")
      expect(@message_obtida).to include(@message_esperada)
      expect(@authorization_obtida).to_not be_nil
    end
  end

  context "POST login (padrão 1)" do
    before(:all) do
      @nome_sobrenome = @usuario_fixture['padrao_valido1']['nome_sobrenome_valido1']
      @email = @usuario_fixture['padrao_valido1']['email_valido1']
      @senha = @usuario_fixture['padrao_valido1']['senha_valida1']

      @json_data_post_usuario = usuario.post_usuario_padrao(@nome_sobrenome, @email, @senha)
      @json_data_post_login = login.post_login(@email, @senha)
      @message_obtida = @json_data_post_login['message'];
      @authorization_obtida = @json_data_post_login['authorization'];
      @message_esperada = "Login realizado com sucesso";
    end

    it "POST login (padrão 1) - Validar status 200 OK e dados retornados com sucesso" do
      expect(@json_data_post_login.code).to eq(200)
      expect(@json_data_post_login.message).to eq("OK")
      expect(@message_obtida).to include(@message_esperada)
      expect(@authorization_obtida).to_not be_nil
    end
  end
end