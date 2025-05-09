describe "DEL usuario/id (administrador)" do
  before(:each) do
    @usuario_fixture = carregar_fixture('usuario')
    @email = @usuario_fixture['admin']['email_valido']
    obter_por_email_e_excluir_usuario_por_id(@email)

    @nome_sobrenome = @usuario_fixture['admin']['nome_sobrenome_valido']
    @senha = @usuario_fixture['admin']['senha_valida']
    @admin = "true"
  end

  it "DEL usuario/id (administrador) - Validar status 200 OK e dados retornados com sucesso" do
    @json_data_post_usuario = usuario.post_usuario(@nome_sobrenome, @email, @senha, @admin)
    @id_obtido = @json_data_post_usuario['_id']
    @id_administrador = @id_obtido

    @json_data_delete_usuario = usuario.delete_usuario(@id_administrador)
    @message_obtida = @json_data_delete_usuario['message']
    @message_esperada = "Registro excluído com sucesso"
    
    expect(@json_data_delete_usuario.code).to eql(200)
    expect(@json_data_delete_usuario.message).to eql("OK")
    expect(@message_obtida).to include(@message_esperada)
  end
end
