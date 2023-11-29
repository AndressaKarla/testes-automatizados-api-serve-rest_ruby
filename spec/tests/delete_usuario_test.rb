describe "Usuarios" do
  before(:all) do
    @usuario_fixture = carregar_fixture('usuario')

    email_usuario_padrao_valido1 = @usuario_fixture['padrao_valido1']['email_valido1']
    obter_por_email_e_excluir_usuario_por_id(email_usuario_padrao_valido1)

    email_usuario_admin_valido1 = @usuario_fixture['admin_valido1']['email_valido1']
    obter_por_email_e_excluir_usuario_por_id(email_usuario_admin_valido1)
  end

  context "DEL usuario/id (administrador)" do
    before(:all) do
      @nome_sobrenome = @usuario_fixture['admin_valido1']['nome_sobrenome_valido1']
      @email = @usuario_fixture['admin_valido1']['email_valido1']
      @senha = @usuario_fixture['admin_valido1']['senha_valida1']

      @json_data_post_usuario = usuario.post_usuario_admin(@nome_sobrenome, @email, @senha)
      @id_obtido = @json_data_post_usuario['_id']
      @id_administrador = @id_obtido

      @json_data_delete_usuario = usuario.delete_usuario(@id_administrador)
      @message_obtida = @json_data_delete_usuario['message'];
      @message_esperada = "Registro excluído com sucesso";
    end

    it "DEL usuario/id (administrador) - Validar status 200 OK e dados retornados com sucesso" do
      expect(@json_data_delete_usuario.code).to eq(200)
      expect(@json_data_delete_usuario.message).to eq("OK")
      expect(@message_obtida).to include(@message_esperada)
    end
  end
end