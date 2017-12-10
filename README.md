# Projeto de teste frontend e backend usando Cucumber/Ruby/Capybara/HTTParty.

## Dependências
* RVM
* Ruby 2.4.1
* Google Chrome
* ChromeDriver

## Instrução de instalação

        * install rvm
        * Veja instrução de instalação (https://rvm.io/rvm/install)
        * Instalar o bundler
                $ gem install bundler

        * Projeto
                $ git clone https://github.com/kstayner/projeto_front_back.git
                $ bundle install

##TAGS

* @login_invalid_password para executar o cenário de login com senha invalida
* @login_invalid_user para executar o cenário de login com usuário inválido
* @login_success para executar o cenário de login com sucesso
* @post para executar o cenário de back end utilizando o método HTTP POST
* @put para executar o cenário de back end utilizando o método HTTP PUT
* @patch para executar o cenário de back end utilizando o método HTTP PATCH
* @delete para executar o cenário de back end utilizando o método HTTP DELETE
* @front para executar todos os cenários de front end
* @service para executar todos os cenários de back end
* @all para executar todos os cenários de front e back end


## Exemplo:

	$ cucumber --tag @front
