describe "POST login (administrador)" do
 before(:each) do
    @usuario_fixture = carregar_fixture('usuario')
    @email = @usuario_fixture['admin']['email_valido']
    obter_por_email_e_excluir_usuario_por_id(@email)

    @nome_sobrenome = @usuario_fixture['admin']['nome_sobrenome_valido']
    @senha = @usuario_fixture['admin']['senha_valida']
    @admin = "true"
  end

  it "POST login (administrador) - Validar status 200 OK e dados retornados com sucesso" do
    @json_data_post_usuario = usuario.post_usuario(@nome_sobrenome, @email, @senha, @admin)
    @json_data_post_login = login.post_login(@email, @senha)
    @message_obtida = @json_data_post_login['message']
    @authorization_obtida = @json_data_post_login['authorization']
    @message_esperada = "Login realizado com sucesso"

    expect(@json_data_post_login.code).to eql(200)
    expect(@json_data_post_login.message).to eql("OK")
    expect(@message_obtida).to include(@message_esperada)
    expect(@authorization_obtida).to_not be_nil
  end
end

describe "POST login (padrão)" do
  before(:each) do
    @usuario_fixture = carregar_fixture('usuario')
    @email = @usuario_fixture['padrao']['email_valido']
    obter_por_email_e_excluir_usuario_por_id(@email)

    @nome_sobrenome = @usuario_fixture['padrao']['nome_sobrenome_valido']
    @senha = @usuario_fixture['padrao']['senha_valida']
    @admin = "false"
  end

  it "POST login (padrão) - Validar status 200 OK e dados retornados com sucesso" do
    @json_data_post_usuario = usuario.post_usuario(@nome_sobrenome, @email, @senha, @admin)
    @json_data_post_login = login.post_login(@email, @senha)
    @message_obtida = @json_data_post_login['message']
    @authorization_obtida = @json_data_post_login['authorization']
    @message_esperada = "Login realizado com sucesso"

    expect(@json_data_post_login.code).to eql(200)
    expect(@json_data_post_login.message).to eql("OK")
    expect(@message_obtida).to include(@message_esperada)
    expect(@authorization_obtida).to_not be_nil
  end
end
