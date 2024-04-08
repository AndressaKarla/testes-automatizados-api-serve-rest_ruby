require 'httparty'

class Login 
    include HTTParty

    def post_login(email, senha)
        BaseApi.post('/login', headers: { 'Accept': 'application/json', 'Content-Type': 'application/json' }, body: { email: email, password: senha }.to_json)
    end
end