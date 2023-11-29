require 'httparty'

class Login 
    include HTTParty

    def post_login(email, senha)
        BaseApi.post('/login', body: { email: email, password: senha }.to_json, headers: { 'Accept': 'application/json', 'Content-Type': 'application/json' })
    end
end