require 'faker'

module Helpers
    def carregar_fixture(nome_fixture)
        JSON.parse(File.read("spec/support/fixtures/#{nome_fixture}.json"))
    end

    def obter_por_email_e_excluir_usuario_por_id(email)
        retorno_get = BaseApi.get("/usuarios?email=#{email}", headers: { 'Accept': 'application/json', 'Content-Type': 'application/json' })

        if retorno_get['quantidade'] == 1
            id_usuario_retornado = retorno_get['usuarios'][0]['_id']
            BaseApi.delete("/usuarios/#{id_usuario_retornado}", headers: { 'Accept': 'application/json', 'Content-Type': 'application/json' })
        end
    end

    def gerar_numeros_aleatorios(qtde_digitos)
        text = ""
        possible = "0123456789"

        for i in 0..qtde_digitos - 1 do
            text += possible[rand() * possible.length]
        end

        return text
    end

    def gerar_nome_sobrenome
        nome = [
            "Alice",
            "Amanda",
            "Ana",
            "André",
            "Anthony",
            "Arthur",
            "Augusto",
            "Beatriz",
            "Benjamin",
            "Bernardo",
            "Bianca",
            "Breno",
            "Caio",
            "Camila",
            "Carla",
            "Carolina",
            "Catarina",
            "Cecília",
            "Clara",
            "Daniel",
            "Davi",
            "Diego",
            "Eduardo",
            "Emanuelly",
            "Enzo",
            "Evelyn",
            "Fábio",
            "Felipe",
            "Fernando",
            "Francisco",
            "Gabriel",
            "Gabriela",
            "Guilherme",
            "Gustavo",
            "Helena",
            "Henrique",
            "Isabel",
            "Isabela",
            "Isabella",
            "Isadora",
            "Joana",
            "João",
            "Júlia",
            "Juliana",
            "Kevin",
            "Laís",
            "Lara",
            "Larissa",
            "Laura",
            "Lavinia",
            "Leonardo",
            "Letícia",
            "Lívia",
            "Lorena",
            "Lorenzo",
            "Luana",
            "Lucas",
            "Lucca",
            "Luciano",
            "Luiza",
            "Luna",
            "Manuela",
            "Marcelo",
            "Maria",
            "Mariana",
            "Mariane",
            "Melissa",
            "Miguel",
            "Mirella",
            "Murilo",
            "Natália",
            "Nathália",
            "Nicolas",
            "Otávio",
            "Paulo",
            "Pedro",
            "Pietra",
            "Rafael",
            "Raul",
            "Rebeca",
            "Ricardo",
            "Roberto",
            "Rodrigo",
            "Ruan",
            "Samuel",
            "Sofia",
            "Sophia",
            "Stella",
            "Thiago",
            "Tomás",
            "Valentina",
            "Vinícius",
            "Vitor",
            "Vitória",
            "Yasmin"
        ]

        nome_aleatorio = nome[rand() * nome.length]

        sobrenome = [
            "Abreu",
            "Aguiar",
            "Albuquerque",
            "Almeida",
            "Alves",
            "Andrade",
            "Araújo",
            "Azevedo",
            "Barbosa",
            "Barros",
            "Batista",
            "Borges",
            "Braga",
            "Campos",
            "Cardoso",
            "Carneiro",
            "Carvalho",
            "Castro",
            "Cavalcante",
            "Cavalcanti",
            "Coelho",
            "Correia",
            "Costa",
            "Coutinho",
            "Cruz",
            "Cunha",
            "Dantas",
            "Dias",
            "Farias",
            "Fernandes",
            "Ferreira",
            "Fialho",
            "Figueiredo",
            "Fonseca",
            "Freitas",
            "Furtado",
            "Gomes",
            "Gonçalves",
            "Goulart",
            "Gusmão",
            "Leite",
            "Lemos",
            "Lima",
            "Lopes",
            "Macedo",
            "Machado",
            "Marques",
            "Martins",
            "Melo",
            "Mendes",
            "Monteiro",
            "Moraes",
            "Morais",
            "Moreira",
            "Moura",
            "Neves",
            "Nogueira",
            "Nunes",
            "Oliveira",
            "Pacheco",
            "Peixoto",
            "Pereira",
            "Pires",
            "Prado",
            "Ramos",
            "Rezende",
            "Ribeiro",
            "Rocha",
            "Rodrigues",
            "Sales",
            "Sampaio",
            "Santos",
            "Saraiva",
            "Silva",
            "Silveira",
            "Sousa",
            "Souza",
            "Tavares",
            "Teixeira",
            "Valente",
            "Vargas",
            "Vieira",
            "Xavier"
        ]

        sobrenome_aleatorio = sobrenome[rand() * sobrenome.length]

        nome_sobrenome = nome_aleatorio + " " + sobrenome_aleatorio

        return nome_sobrenome
    end

    def gerar_email (nome_sobrenome)
        dominio_email = [
            "@gmail.com",
            "@outlook.com",
            "@yahoo.com",
            "@icloud.com",
            "@protonmail.com",
            "@hotmail.com.br"
        ]

        dominio_email_aleatorio = dominio_email[rand() * dominio_email.length]

        nome_sobrenome_normalizado = nome_sobrenome.downcase.gsub(/\s/,'.').unicode_normalize(:nfd).gsub(/[\u0300-\u036f]/,'')
        email = nome_sobrenome_normalizado + "." + gerar_numeros_aleatorios(5) + dominio_email_aleatorio

        return email
    end

    def gerar_senha
        senha = Faker::Internet.password

        return senha
    end

    def gerar_nome_produto(numero)
        nome_produto = "Nome produto " + numero

        return nome_produto
    end

    def gerar_descricao_produto(numero)
        descricao_produto = "Descrição produto " + numero

        return descricao_produto
    end
end
