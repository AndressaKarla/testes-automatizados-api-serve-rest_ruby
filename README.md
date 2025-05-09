---
# :test_tube: Projeto de Testes Funcionais Automatizados de API REST | Ruby v3.1.2 | Rspec | HTTParty | GitHub Actions 
[![Badge ServeRest](https://img.shields.io/badge/API-ServeRest-green)](https://github.com/ServeRest/ServeRest/)
---
# :information_source: Introdução
Esse projeto "testes-automatizados-api-serve-rest_ruby" é executado em um ambiente de produção na ["API REST"](https://serverest.dev) do ["ServeRest"](https://github.com/ServeRest) que simula uma loja virtual, nos Sistemas Operacionais Windows 10 e Linux Ubuntu 22.04, com o objetivo de praticar ainda mais testes automatizados de API REST em Ruby v3.1.2, Rspec, HTTParty e GitHub Actions.

---
# :warning: _Instruções considerando Windows 10, para outras versões do Windows ou outros sistemas operacionais talvez seja necessário algumas adaptações_

# :dart: Executar testes, Gerar e armazenar os resultados dos testes no GitHub Actions
## :triangular_flag_on_post: Executar testes automatizados de API REST em um ambiente de produção, Gerar e armazenar report html no GitHub Actions 
- Nesse repositório, acessar a aba "Actions"
- Na seção "Actions", clicar em "Pipeline Testes Automatizados API ServeRest Ruby HTTParty"
- Em "This workflow has a workflow_dispatch event trigger.", clicar em "Run workflow" > "Run workflow" para executar testes automatizados de API REST em um ambiente de produção, gerar e armazenar report html no GitHub Actions [com os conteúdos de "secrets.USUARIO_ENV", etc (baseado nos fixtures ["usuario.example.json"](https://github.com/AndressaKarla/testes-automatizados-api-serve-rest_ruby/tree/main/spec/support/fixtures/usuario.example.json), etc, e configurados na aba "Settings" desse repositório > "Secrets and variables" > "Actions" > "Secrets" > "Repository secrets") que foram redirecionados para os fixtures "usuario.json"]
- Após o término da execução, clicar na run "Pipeline Testes Automatizados API ServeRest Ruby HTTParty"
- Na seção "Artifacts", clicar em "ruby-httparty-api-serve-rest-report-html"
- Na janela aberta, escolher um diretório para baixar a pasta compactada "ruby-httparty-api-serve-rest-report-html.zip"

# :mag_right: Verificar no navegador padrão o report html gerado e armazenado anteriormente no GitHub Actions e descompactado no computador  
- No Windows 10, abrir uma janela do "Windows Explorer"
- Acessar o diretório onde foi baixada a pasta compactada "ruby-httparty-api-serve-rest-report-html.zip" anteriormente
- Descompactar a pasta
- Acessar a pasta descompactada "ruby-httparty-api-serve-rest-report-html"
- Clicar 2 vezes sob o report "ruby-httparty-api-serve-rest-report-html.html" gerado e armazenado anteriormente no GitHub Actions e descompactado para ser aberto e verificado no navegador padrão no computador

---
# :warning: Antes de clonar ou executar esse projeto localmente no computador, é necessário seguir as instruções abaixo :point_down:

## :hammer_and_wrench: Janela do "Windows Explorer" > aba "Exibir" e marcar algumas opções
- Abrir uma janela do "Windows Explorer"
- Clicar na aba "Exibir" 
- Marcar a opção "Extensões de nomes de arquivos"
- Marcar a opção "Itens ocultos"

## :hammer_and_wrench: Baixar e instalar o git e gitbash; configurar o git
- Caso ainda não tenha o git e gitbash baixado e instalado, acessar o link do [git e gitbash](https://git-scm.com/download/win), baixar e instalar como administrador
- Caso ainda não tenha configurado o git, seguir os passos apresentados nesse link [Configure a ferramenta](https://training.github.com/downloads/pt_BR/github-git-cheat-sheet/#:~:text=Configure%20a%20ferramenta) e configurar

## :hammer_and_wrench: Instalar algumas dependências necessárias 
### Desinstalar Ruby e/ou Rails que já foram instalados em algum outro momento
- Na ferramenta de pesquisa do Windows, informar "Adicionar ou remover programas" 
- Clicar na sugestão apresentada 
- Em "Aplicativos e recursos", no campo de busca, informar "Ruby" e/ou "Rails"
- Clicar no resultado apresentado
- Clicar no botão "Desinstalar" e prosseguir com as etapas de desinstalação
- Na janela do "Windows Explorer" acessar o diretório "C:", procurar e excluir a pasta "Ruby" e/ou "Rails"
- Acessar o diretório "C:\Users\<usuario>", procurar e excluir os arquivos ".gem" e ".bundle"

### Ruby+Devkit versão 3.1.2-1 (x64) 
- Baixar o [Ruby+Devkit 3.1.2-1 (x64)](https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-3.1.2-1/rubyinstaller-devkit-3.1.2-1-x64.exe)
- Em "Select Components", marcar todas as opções caso ainda não estiverem marcadas
- Em "Completing the Ruby 3.1.2-1 ...", verificar se "Run 'ridk install' to set ip MSYS2 ..." está marcado por padrão e clicar em "Finish"
- No terminal aberto automaticamente, após algum tempo teclar "Enter"
- Após o término da instalação, teclar "Enter" novamente
- Fechar esse terminal
- Abrir um novo gitbash ou outro terminal
- Informar o comando abaixo para confirmar se o ruby realmente foi instalado
```
ruby -v
```
- Verificar se foi retornada a mesma versão do ruby+devkit instalada anteriormente:
```
ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x64-mingw-ucrt]
```
- Fechar esse gitbash ou terminal

---
# :hammer_and_wrench: Clonar o projeto
- Abrir uma janela do "Windows Explorer"
- Acessar o diretório onde será clonado o projeto "testes-automatizados-api-serve-rest_ruby"
- Copiar esse diretório 
- Abrir um novo gitbash
- Informar o comando abaixo para acessar onde será clonado o projeto
```
cd "<diretório\copiado\anteriormente>"
```
Ex.: 
```
cd "C:\Projetos\Automação"
```
- Informar o comando abaixo para clonar este repositório via "HTTPS"

```
git clone https://github.com/AndressaKarla/testes-automatizados-api-serve-rest_ruby.git
```

- Ou informar o comando abaixo para clonar este repositório via "SSH"

```
git clone git@github.com:AndressaKarla/testes-automatizados-api-serve-rest_ruby.git
```

# :hammer_and_wrench: Instalar mais algumas dependências necessárias
- No gitbash aberto anteriormente, informar o comando abaixo para acessar o projeto “testes-automatizados-api-serve-rest_ruby” clonado anteriormente
```
cd testes-automatizados-api-serve-rest_ruby
```
Ex.: 
```
C:\Projetos\Automação\testes-automatizados-api-serve-rest_ruby
```
- Informar o comando abaixo para instalar mais algumas dependências necessárias do projeto 
```
bundle install
```

# :hammer_and_wrench: Instalar as extensões no Visual Studio Code (VS Code)
- Caso ainda não tenha o VS Code baixado e instalado, acessar o site do [Visual Studio Code](https://code.visualstudio.com/download), baixar e instalar com a opção "System Installer"
- Com o Visual Studio Code aberto, caso seja apresentado alguma mensagem de "Instalar pacote de idiomas ...", clicar no ícone de configurações > "Don't Show Again"
- Clicar na opção "Manage > Profiles > Create Profile"
- Em "Profile name", informar "Ruby API"
- Clicar na opção "Create"
- Clicar na opção "Extensions", informar e instalar as extensões abaixo:
  - Hyper Term Theme
    - HasseNasse
      - Clicar na opção "Hyper Term Black" apresentada para habilitar a extensão
  - Material Icon Theme
    - Philipp Kief
      - Clicar na opção "Material Icon Theme" apresentada para habilitar a extensão 
  - Simple Ruby ERB 
    - Victor Ortiz Heredia
- Fechar o VS Code

# :bookmark_tabs: Abrir o VS Code diretamente na pasta do projeto "testes-automatizados-api-serve-rest_ruby"
- No gitbash aberto anteriormente, informar o comando abaixo para abrir o VS Code diretamente na pasta do projeto "testes-automatizados-api-serve-rest_ruby"
```
code .
```
- Aguardar o VS Code ser aberto
- Fechar esse gitbash
- No VS Code aberto, caso seja apresentado "Do you trust the authors on the files in this folder?", marcar a opção "Trust the authors of all files in the parent folder ...."
  - Clicar no botão "Yes, I trust the authors ...."

# :hammer_and_wrench: Criar arquivos "usuario.json", informando os dados com base nos arquivos "usuario.example.json", etc
- No VS Code aberto anteriormente, acessar "spec > support > fixtures"
- Criar o arquivo "usuario.json"
  - Informar os dados com base no arquivo ["usuario.example.json"](https://github.com/AndressaKarla/testes-automatizados-api-serve-rest_ruby/tree/main/spec/support/fixtures/usuario.example.json)
  - Salvar o arquivo "usuario.json" com os dados informados anteriormente

---
# :dart: Executar testes, Gerar e armazenar os resultados dos testes no computador
## :triangular_flag_on_post: Executar cada funcionalidade e/ou cenário individualmente do projeto 
- Abrir uma janela do "Windows Explorer"
- Acessar o diretório onde foi clonado o projeto “testes-automatizados-api-serve-rest_ruby”
- Copiar esse diretório 
- Abrir um novo gitbash
- Informar o comando abaixo para acessar o projeto "testes-automatizados-api-serve-rest_ruby"
```
cd "<diretório\copiado\anteriormente>"
```
Ex.: 
```
cd "C:\Projetos\Automação\testes-automatizados-api-serve-rest_ruby"
```
- Informar o comando abaixo para executar cada funcionalidade e/ou cenário individualmente do projeto:
```
bundle exec rspec spec/tests/nome_arquivo_test.rb
```
Ex. 1:
```
bundle exec rspec spec/tests/post_login_test.rb
```
Ex. 2: 
```
bundle exec rspec spec/tests/delete_usuario_test.rb
```

## :triangular_flag_on_post: Ou executar todas as funcionalidades e/ou cenários do projeto, Gerar e armazenar report html no computador
- No gitbash aberto anteriormente, informar o comando abaixo para executar todas as funcionalidades e/ou cenários do projeto (mesmo comando que é utilizado no "Passo 4" do job "ruby-api-rest" da "Pipeline Testes Automatizados API ServeRest Ruby HTTParty" em ".github > workflows > [workflow-testes-automatizados-api-serve-rest-ruby-httparty.yml](https://github.com/AndressaKarla/testes-automatizados-api-serve-rest_ruby/blob/main/.github/workflows/workflow-testes-automatizados-api-serve-rest-ruby-httparty.yml)" no GitHub Actions), Gerar e armazenar report html no computador (reports):
```
bundle exec rspec spec/tests/*
```
- Após executar os testes, fechar esse gitbash

---
# :mag_right: Verificar no navegador padrão o report html gerado e armazenado na pasta "reports" anteriormente no computador 
## :bookmark_tabs: Report html no computador
- No VS Code aberto anteriormente, acessar "reports > ruby-httparty-api-serve-rest-report-html.html" 
- Clicar com botão direito do mouse sob o arquivo "ruby-httparty-api-serve-rest-report-html.html" > "Reveal in File Explorer" 
- Na janela do "Windows Explorer" aberta automaticamente, clicar 2 vezes sob o arquivo "ruby-httparty-api-serve-rest-report-html.html" gerado e armazenado anteriormente no computador para ser aberto e verificado no navegador padrão

---
### Feito com ❤️ por Andressa Karla :wave: 

### [![Medium](https://img.shields.io/badge/-Medium-595D60?style=plastic&logo=Medium&logoColor=white&link=https://medium.com/@andressakarla)](https://medium.com/@andressakarla) [![Linkedin](https://img.shields.io/badge/-LinkedIn-595D60?style=plastic&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/andressakarla/)](https://www.linkedin.com/in/andressakarla/)

---
