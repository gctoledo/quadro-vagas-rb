# Quadro de Vagas

Plataforma open-source desenvolvida com Ruby on Rails 8 para gerenciamento e publicação de vagas de emprego.

## Requisitos

- Ruby 3.4.2
- Rails 8.0.1
- PostgreSQL 16
- Node.js e Yarn
- Docker
- Docker Compose

## Tecnologias

| Tecnologia   | Versão |
| ------------ | ------ |
| Ruby         | 3.4.2  |
| Rails        | 8.0.1  |
| PostgreSQL   | 16     |
| Tailwind CSS | 3.x    |

## Executando o projeto

### 1. Clonar o repositório

```bash
git clone https://github.com/rubinostrilhos/quadro-vagas-rb
cd quadro-vagas-rb
```

### 2. Configurar variáveis de ambiente

Crie um arquivo `.env` na raiz do projeto e configure suas variáveis de acordo com o arquivo `.env.example`.

### 3. Construir e subir os containers

```bash
docker-compose up --build
```

Isso iniciará a aplicação e o banco de dados.

### 4. Criar o banco de dados e rodar as migrações

```bash
docker-compose exec web bin/rails db:create db:migrate
```

### 5. Acessar a aplicação

Acesse `http://localhost:3000` no navegador.

## Executando testes

### 1. Rodando os testes automatizados

```bash
docker-compose exec web bundle exec rspec
```

Para testes de sistema:

```bash
docker-compose exec web bundle exec rspec ./spec/system
```

### 2. Rodando Linters

```bash
docker-compose exec web bundle exec rubocop
```

Para corrigir problemas automaticamente:

```bash
docker-compose exec web bundle exec rubocop -a
```
