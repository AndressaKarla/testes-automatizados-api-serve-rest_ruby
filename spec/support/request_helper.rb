Dir[File.join(File.dirname(__FILE__), "../requests/*_request.rb")].each {|file| require file}

module Requests
    def login
        @login ||= Login.new
    end 

    def usuario
        @usuario ||= Usuario.new
    end 

    def produto
        @produto ||= Produto.new
    end
end