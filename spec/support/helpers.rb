module Helpers
    def carregar_fixture(nome_arquivo)
        JSON.parse(File.read("spec/support/fixtures/#{nome_arquivo}.json"))
    end

    def obter_por_email_e_excluir_usuario_por_id(email_usuario)
        retorno_get = BaseApi.get("/usuarios?email=#{email_usuario}", headers: { 'Accept': 'application/json', 'Content-Type': 'application/json' })
    
        if retorno_get['quantidade'] == 1
            id_usuario_retornado = retorno_get['usuarios'][0]['_id']
            BaseApi.delete("/usuarios/#{id_usuario_retornado}", headers: { 'Accept': 'application/json', 'Content-Type': 'application/json' })
        end
    end
end