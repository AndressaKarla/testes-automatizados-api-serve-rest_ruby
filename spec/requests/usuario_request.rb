require 'httparty'

class Usuario
    include HTTParty

    def post_usuario(nome_sobrenome, email, senha, admin)
        BaseApi.post('/usuarios', headers: { 'Accept': 'application/json', 'Content-Type': 'application/json' }, body: { nome: nome_sobrenome, email: email, password: senha, administrador: admin }.to_json)
    end

    def delete_usuario(id)
        BaseApi.delete("/usuarios/#{id}", headers: { 'Accept': 'application/json', 'Content-Type': 'application/json'})
    end
end
