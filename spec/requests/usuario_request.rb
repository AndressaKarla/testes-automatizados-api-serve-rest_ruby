require 'httparty'
require 'faker'

class Usuario 
    include HTTParty

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
        email = nome_sobrenome_normalizado + dominio_email_aleatorio

        return email
    end

    def gerar_senha
        senha = Faker::Internet.password

        return senha
    end

    def post_usuario_padrao(nome_sobrenome, email, senha)
        BaseApi.post('/usuarios', headers: { 'Accept': 'application/json', 'Content-Type': 'application/json' }, body: { nome: nome_sobrenome, email: email, password: senha, administrador: "false" }.to_json)
    end

    def post_usuario_admin(nome_sobrenome, email, senha)
        BaseApi.post('/usuarios', headers: { 'Accept': 'application/json', 'Content-Type': 'application/json' }, body: { nome: nome_sobrenome, email: email, password: senha, administrador: "true" }.to_json)
    end

    def delete_usuario(id)
        BaseApi.delete("/usuarios/#{id}", headers: { 'Accept': 'application/json', 'Content-Type': 'application/json'})
    end
end