# Submarino

Repositório de teste e2e do Submarino com Cucumber, Capybara e Ruby

## Como executar o projeto

- Ter instalado a versão 2.6 ou superior do Ruby
  
  ### Instalar o Bundler
  ```shel
  gem install bundler
  ```

  ### Instalar as dependências do Ruby para o projeto
  ```shell
  bundle install
  ```
  
  ### Executar localmente
  ```shell
  bundle exec cucumber
  ```
  
  ### Executar no servidor de CI
  ```shell
  bundle exec cucumber -p ci
  ```

