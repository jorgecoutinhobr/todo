## Pré-requisitos

- Ruby 3.3.0
- Rails 8.0.1
- PostgreSQL

## Instalação

1. Clone o repositório:

    ```sh
    git clone https://github.com/jorgecoutinhobr/todo.git
    cd todo
    ```

2. Instale as dependências:

    ```sh
    bundle install
    ```

3. Configure o banco de dados:

    ```sh
    rails db:create
    rails db:migrate
    rails db:seed
    ```

## Execução

1. Inicie o servidor Rails:

    ```sh
    rails server
    ```

2. Acesse a aplicação no seu navegador:

    ```
    http://localhost:3000
    ```