# INTEGRAÇÃO CIRCLE CI
Projeto de teste para aprender a utilzar o Circle [CI] (https://circleci.com)

[![CircleCI](https://circleci.com/gh/mairadutra/circle_ci_exemplo.svg?style=svg)](https://circleci.com/gh/mairadutra/circle_ci_exemplo)

O Circle CI é uma ferramenta para Continuos Integration que facilitou muito o processo de ter
teste rodando em uma ferramenta de entrega contínua já que não é necessário instalar Jenkis nem
configurar plugins. Todo trabalho pesado é feito confugurando somente um arquivo:  circle.yml

Basta configura-lo da seuinte maneira:

machine:
 ruby:
   version: ruby-2.3.3
 services:
   - docker
dependencies:
 pre:
   - sudo apt-get install libxss1 libappindicator1 libindicator7
   - wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
   - sudo dpkg -i google-chrome*.deb
   - sudo apt-get install -f
   - sudo apt-get install jq nodejs curl -qy
   - npm install -g geckodriver
   - npm install -g chromedriver
   - npm install -g phantomjs
   - gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
   - curl -sSL https://get.rvm.io | bash -s stable --ruby=2.3.3
 override:
   - rvm use .
   - gem install bundler
   - bundle install
test:
 override:
   - cd cucumber; cucumber -p chrome -p qa

onde:
## machine
Onde se diz que  quer uma máquina (que é instalada via container no docker(services)) com a versão X.X.X do ruby.
Toda vez que o teste for executado, ele vai montar uma máquina nova e ao fim do teste, essa máquina morre.

É a para aconfigurar tudo do seu jeito: por exemplo, eu utilizo Google Chrome, Firefox (já vem nativo),
NodeJS, Geckodriver, Chromedriver, RVM para trabalhar com o gerenciamento de versões do ruby
e é exatamente o que se fala  pra ele fazer na pré dependência:

- sudo apt-get install libxss1 libappindicator1 libindicator7 -- Adiciono as libs necessárias para instalar o Chrome;
 - wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -- Baixo o Chrome do servidor via wget;
 - sudo dpkg -i google-chrome*.deb -- Descompacto o pacote;
 - sudo apt-get install -f -- Instalo o Google Chrome;
 - sudo apt-get install jq nodejs curl -qy -- Instalo NodeJS;
 - npm install -g geckodriver -- Com o Node, instalo o geckdriver;
 - npm install -g chromedriver@2.25 -- Com o Node, instalo o chromedriver em uma versão estável;
 - gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 -- Add as libs para o RVM;
 - curl -sSL https://get.rvm.io | bash -s stable --ruby=2.3.3 -- Instalo o rvm já com a versão 2.2.2 (ou qualquer outra).


## override:
Para configurar mais algumas coisinhas:
- rvm use . -- Para utilizar a versão que eu instalei via RVM;
- gem install bundler -- Com o ruby instalado, peço para instalar a gem bundler;
- bundle install -- Como estou dentro da raiz do projeto, que possui o Gemfile, já peço pra dar bundle e instalar todas as gems e suas dependências

## test
Essa parte é a mais importante, pois é exatamente nesse bloco :test que você define quais testes você quer colocar dentro da sua suíte.
- cd cucumber; cucumber -p chrome -p qa

Volta para a pasta cucumber e ececuta o teste.
O -p chrome é pra rodar no google chrome, e o -p qa é porque eu defini um ambiente de QA para que os meus testes possam ser executados.



Para outras inforamções acessara a [Docuemntação]  (https://circleci.com/docs/)
