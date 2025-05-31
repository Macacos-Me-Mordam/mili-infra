# MILI

Repositório principal do projeto **MILI**, responsável por organizar a infraestrutura e os submódulos de frontend e backend.

## Visão Geral do Projeto

O projeto **MILI** é um sistema completo com backend desenvolvido em **Rust utilizando o framework Axum** e frontend construído com **Next.js**, visando fornecer uma arquitetura moderna, escalável e performática para aplicações web.

## Estrutura do Repositório

O repositório está organizado com submódulos Git, permitindo o desenvolvimento desacoplado dos módulos de frontend e backend:

```
mili-infra/
├── mili-backend/          # Backend em Rust com Axum (submódulo)
├── mili-frontend/         # Frontend em Next.js (submódulo)
├── postgresql_setup/      # Scripts de inicialização do banco de dados
│   └── init.sql           # Criação dos bancos e tabelas iniciais
├── docker-compose.yml     # Ambiente de desenvolvimento
└── README.md              # Documentação principal do projeto
```

## Configuração e Instalação

### Pré-requisitos

- Git
- Docker e Docker Compose
- Node.js (para o frontend)
- Rust (para o backend)

### Clonando o Repositório

```bash
git clone --recurse-submodules git@github.com:Macacos-Me-Mordam/mili-infra.git
cd mili-infra
```

Ou use o script auxiliar:

```bash
./clone.sh
```

### Subindo a Infraestrutura com Docker Compose

```bash
docker compose -f docker-compose-dev.yml up
```

Isso inicializará os serviços:

- PostgreSQL
- Keycloak

## Desenvolvimento

### Backend (Rust com Axum)

```bash
cd mili-backend
cargo build
cargo run
```

O backend estará disponível por padrão em `http://localhost:3000`.

### Frontend (Next.js)

```bash
cd mili-frontend
npm install
npm run dev
```

O frontend estará disponível em `http://localhost:3001`.

## Componentes da Infraestrutura

### Banco de Dados PostgreSQL

- **Porta:** 5432  
- **Usuário:** postgres  
- **Senha:** postgres  
- **Banco padrão:** mili  

### Keycloak (Autenticação)

- **Porta:** 8080  
- **Usuário admin:** admin  
- **Senha:** admin  
- **URL de administração:** http://localhost:8080/admin  
- **Modo:** Desenvolvimento (sem HTTPS)

## Fluxo de Desenvolvimento

1. Suba o banco e autenticação com:

```bash
docker compose -f docker-compose-dev.yml up
```

2. Rode o backend em Rust com `cargo run`  
3. Rode o frontend em Next.js com `npm run dev`  
4. Acesse:
   - Frontend: http://localhost:3001  
   - Backend: http://localhost:3000 
   - Keycloak: http://localhost:8080/admin  
