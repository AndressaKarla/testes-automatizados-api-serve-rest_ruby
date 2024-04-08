require 'httparty'
require 'faker'

class Produto 
    include HTTParty

    def gerar_numeros_aleatorios(qtde_numeros)
        text = ""
        possible = "0123456789"

        for i in 0..qtde_numeros - 1 do
            text += possible[rand() * possible.length]
        end

        return text
    end  

    def post_produto(nome, preco, descricao, quantidade, token)
        BaseApi.post('/produtos', headers: { 'Accept': 'application/json', 'Content-Type': 'application/json', 'Authorization': token }, body: { nome: nome, preco: preco, descricao: descricao, quantidade: quantidade }.to_json)
    end
end