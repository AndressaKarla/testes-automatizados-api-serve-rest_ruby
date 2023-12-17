---
# Projeto de Testes Automatizados de API REST | Ruby | Rspec | HTTParty | GitHub Actions :test_tube:
---
# :information_source: Introdução
Esse projeto "testes-automatizados-api-serve-rest_ruby" é executado em um ambiente de desenvolvimento na ["API REST"](https://serverest.dev) do ["ServeRest"](https://github.com/ServeRest) que simula uma loja virtual, com o objetivo de me aprofundar um pouco mais nos estudos sobre testes automatizados de API REST em Ruby nas ferramentas Rspec, HTTParty e GitHub Actions.

---
# :dart: Executar testes automatizados de API REST em um ambiente de desenvolvimento, Gerar e armazenar relatório html no GitHub Actions 
- Nesse repositório, acessar a aba "Actions"
- Na seção "Actions", clicar em "Pipeline Testes Automatizados API ServeRest Postman"
- Em "This workflow has a workflow_dispatch event trigger.", clicar em "Run workflow" > "Run workflow" para executar testes automatizados de API REST, gerar e armazenar relatório html no GitHub Actions
- Após o término da execução, clicar na run "Pipeline Testes Automatizados API ServeRest Postman"
- Na seção "Artifacts", clicar em "relatorio-api-serve-rest-ruby"
- Na janela aberta, escolher um diretório para baixar a pasta compactada "relatorio-api-serve-rest-ruby.zip"


# Verificar no navegador padrão o relatório html gerado e armazenado anteriormente no GitHub Actions e descompactado no computador :female_detective: 
- Abrir uma janela do "Windows Explorer"
- Acessar o diretório onde foi baixada a pasta compactada "relatorio-api-serve-rest-ruby.zip" anteriormente
- Descompactar a pasta
- Acessar a pasta descompactada "relatorio-api-serve-rest-ruby"
- Clicar 2 vezes sob o relatório "relatorio-api-serve-rest-ruby.html" gerado e armazenado anteriormente no GitHub Actions e descompactado para ser aberto e verificado no navegador padrão no computador


---
# Antes de clonar ou executar esse projeto localmente no computador, é necessário seguir as instruções abaixo :point_down:

## :hammer_and_wrench: Janela do "Windows Explorer" > aba "Exibir" e marcar algumas opções
- Abrir uma janela do "Windows Explorer"
- Clicar na aba "Exibir" 
- Marcar a opção "Extensões de nomes de arquivos"
- Marcar a opção "Itens ocultos"


## :hammer_and_wrench: Janela do "Windows Explorer", criar uma pasta "tools"
- Abrir uma janela do "Windows Explorer"
- Acessar o diretório "C:"
- Criar uma pasta "tools"


## :hammer_and_wrench: Cmder (Console Emulator)
- Baixar o [Console Emulator (cmder)](https://github.com/cmderdev/cmder/releases/download/v1.3.5/cmder.zip)
- Clicar com botão direito na pasta compactada > Extrair para "cmder"
- Mover a pasta descompactada "cmder" para o diretório "C:\tools" criado anteriormente
- Acessar o diretório "C:\tools\cmder"
- Clicar com botão direito no executável "cmder.exe" > Enviar para > Área de trabalho (criar atalho)
- Acessar a Área de Trabalho
- Clicar 2 vezes no atalho "Cmder - Atalho"
- Clicar na opção "Unblock and Continue"


## :hammer_and_wrench: Desinstalar Ruby e/ou Rails que já foram instalados em algum outro momento
- Na ferramenta de pesquisa do Windows, informar "Adicionar ou remover programas" 
- Clicar na sugestão apresentada 
- Em "Aplicativos e recursos", no campo de busca, informar "Ruby" e/ou "Rails"
- Clicar no resultado apresentado
- Clicar no botão "Desinstalar" e prosseguir com as etapas de desinstalação
- Na janela do "Windows Explorer" acessar o diretório "C:", procurar e excluir a pasta "Ruby" e/ou "Rails"
- Acessar o diretório "C:\Users\usuario", procurar e excluir os arquivos ".gem" e ".bundle"


## :hammer_and_wrench: Ruby+Devkit versão 3.1.2-1 (x64) 
- Baixar o [Ruby+Devkit 3.1.2-1 (x64)](https://github.com/oneclick/rubyinstaller2/releases/download/RubyInstaller-3.1.2-1/rubyinstaller-devkit-3.1.2-1-x64.exe)
- Em "Select Components", marcar todas as opções caso ainda não estiverem marcadas
- Em "Completing the Ruby 3.1.2-1 ...", verificar se "Run 'ridk install' to set ip MSYS2 ..." está marcado por padrão e clicar em "Finish"

- No terminal aberto automaticamente, após algum tempo teclar "Enter"
- Após o término da instalação, teclar "Enter" novamente
- Fechar esse terminal

- Abrir um novo cmder ou outro terminal de preferência, informar o comando abaixo para confirmar se o ruby realmente foi instalado
```
ruby -v
```
- E verificar se foi retornada a mesma versão do ruby+devkit instalada anteriormente:
```
ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x64-mingw-ucrt]
```


## :hammer_and_wrench: Rspec versão 3.12.0 
- No cmder aberto anteriormente, informar o comando abaixo para instalar o rspec versão 3.12.0
```
gem install rspec -v 3.12.0
```
- Fechar esse cmder ou terminal

## :hammer_and_wrench: Baixar, instalar e configurar o git
- Caso ainda não tenha o git baixado e instalado, acessar o site do [git](https://git-scm.com/download/win), baixar e instalar
- Caso ainda não tenha configurado o git, seguir os passos apresentados nesse link [Configure a ferramenta](https://training.github.com/downloads/pt_BR/github-git-cheat-sheet/#:~:text=Configure%20a%20ferramenta) e configurar


## :hammer_and_wrench: Clonar o projeto
- Abrir uma janela do "Windows Explorer"
- Acessar o diretório onde será clonado o projeto "testes-automatizados-api-serve-rest_ruby"
- Copiar esse diretório 
- Abrir um novo cmder
- Informar o comando abaixo para acessar onde será clonado o projeto
```
cd "<diretório copiado anteriormente>"
```
Ex.: 
```
cd "C:\Users\usuario\Desktop"
```
- Informar o comando abaixo para clonar este repositório via "HTTPS"

```
git clone https://github.com/AndressaKarla/testes-automatizados-api-serve-rest_ruby.git
```

- Ou informar o comando abaixo para clonar este repositório via "SSH"

```
git clone git@github.com:AndressaKarla/testes-automatizados-api-serve-rest_ruby.git
```


## :hammer_and_wrench: Instalar todas as dependências necessárias
- No cmder aberto anteriormente, informar o comando abaixo para acessar o projeto “testes-automatizados-web-front-serve-rest_ruby” clonado anteriormente
```
cd testes-automatizados-api-serve-rest_ruby
```
Ex.: 
```
C:\Users\usuario\Desktop\testes-automatizados-api-serve-rest_ruby
```
- Informar o comando abaixo para instalar todas as dependências necessárias do projeto 
```
bundle install
```
- Fechar esse cmder

## :hammer_and_wrench: Instalar as extensões no Visual Studio Code (VS Code)
- Caso ainda não tenha o VS Code baixado e instalado, acessar o site do [Visual Studio Code](https://code.visualstudio.com/download), baixar e instalar com a opção "System Installer"
- Com o Visual Studio Code aberto, caso seja apresentado alguma mensagem de "Instalar pacote de idiomas ...", clicar no ícone de configurações > "Don't Show Again"
- Clicar na opção "Manage > Profiles > Create Profile"
- Em "Profile name", informar "Ruby"
- Clicar na opção "Create"
- Clicar na opção "Extensions", informar e instalar as extensões abaixo:
  - One Dark Pro
    - binaryify
      - Clicar na opção "One Dark Pro Darker" apresentada para habilitar a extensão
  - Material Icon Theme
    - Philipp Kief
      - Clicar na opção "Material Icon Theme" apresentada para habilitar a extensão
  - Ruby 
    - Peng Lv
  - VsCode Ruby 
    - Stafford Brunk
    
- Fechar o VS Code
  
---
# :dart: Executar testes automatizados de API REST em um ambiente de desenvolvimento, Gerar e armazenar relatório html no computador
- Abrir uma janela do "Windows Explorer"
- Acessar o diretório onde foi clonado o projeto “testes-automatizados-web-front-serve-rest_ruby”
- Copiar esse diretório 
- Abrir um novo cmder
- Informar o comando abaixo para acessar o projeto "testes-automatizados-api-serve-rest_ruby"
```
cd "<diretório copiado anteriormente>"
```
Ex.: 
```
cd "C:\Users\usuario\Desktop\testes-automatizados-api-serve-rest_ruby"
```
- Informar o comando abaixo para executar cada feature individualmente do projeto:
```
bundle exec rspec spec/tests/nome_arquivo_request_test.rb
```
Ex. 1:
```
bundle exec rspec spec/tests/login_test.rb
```
Ex. 2: 
```
bundle exec rspec spec/tests/usuario_request.rb
```

- Ou informar o comando abaixo para executar todas as features e/ou cenários do projeto (mesmo comando que é utilizado no "Passo 3" da "Pipeline Testes Automatizados API ServeRest Ruby" em ".github > workflows > [workflow-testes-automatizados-api-serve-rest-ruby.yml](https://github.com/AndressaKarla/testes-automatizados-api-serve-rest_ruby/blob/main/.github/workflows/workflow-testes-automatizados-api-serve-rest-ruby.yml)" no GitHub Actions)
```
bundle exec rspec spec/tests/*
```

---
# Verificar no navegador padrão o relatório html gerado anteriormente no computador :female_detective: 

## :bookmark_tabs: Abrir o VS Code diretamente na pasta do projeto "testes-automatizados-api-serve-rest_ruby"
- No cmder aberto anteriormente, informar o comando abaixo para abrir o VS Code diretamente na pasta do projeto "testes-automatizados-api-serve-rest_ruby"
```
code .
```
- No VS Code aberto, caso seja apresentado "Do you trust the authors on the files in this folder?", marcar a opção "Trust the authors of all files in the parent folder ...."
	- Clicar no botão "Yes, I trust the authors ...."


## :bookmark_tabs: Relatório html no computador
- No VS Code aberto anteriormente, acessar "relatorios > relatorio-api-serve-rest-ruby.html" 
- Clicar com botão direito do mouse sob o arquivo "relatorio-api-serve-rest-ruby.html" > "Reveal in File Explorer" 
- Na janela do "Windows Explorer" aberta automaticamente, clicar 2 vezes sob o arquivo "relatorio-api-serve-rest-ruby.html" para ser aberto e visualizado no navegador padrão


---
### Feito com ❤️ por Andressa Karla :wave: 

### [![Medium](https://img.shields.io/badge/-Medium-595D60?style=plastic&logo=Medium&logoColor=white&link=https://medium.com/@andressakarla)](https://medium.com/@andressakarla) [![Linkedin](https://img.shields.io/badge/-LinkedIn-595D60?style=plastic&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/andressakarla//)](https://www.linkedin.com/in/andressakarla/)

---
