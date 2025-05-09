require 'httparty'

class Produto
    include HTTParty

    def post_produto(nome, preco, descricao, quantidade, token)
        BaseApi.post('/produtos', headers: { 'Accept': 'application/json', 'Content-Type': 'application/json', 'Authorization': token }, body: { nome: nome, preco: preco, descricao: descricao, quantidade: quantidade }.to_json)
    end
end
