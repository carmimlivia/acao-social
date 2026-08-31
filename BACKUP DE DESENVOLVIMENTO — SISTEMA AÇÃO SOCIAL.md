# BACKUP DE DESENVOLVIMENTO — SISTEMA AÇÃO SOCIAL

**Projeto:** Sistema Web de Cadastro — Ação Social\
**Repositório:** `acao-social`\
**Status atual:** 🟢 Em desenvolvimento\
**Etapa atual:** Etapa 1 concluída → Próxima: Etapa 2 — Banco de Dados

---

## 1. Objetivo do projeto

Desenvolver um sistema web simples para uma ação social que atende pessoas carentes e pessoas com enfermidades.

Atualmente, os dados são registrados manualmente, causando:

- possibilidade de cadastros duplicados;
- necessidade de preencher repetidamente os mesmos dados;
- dificuldade para consultar pessoas já atendidas;
- ausência de uma base centralizada;
- dificuldade para organizar as próximas ações sociais.

O projeto será desenvolvido incrementalmente e utilizado também como **projeto de portfólio no GitHub**.

---

# ETAPA 0 — PREPARAÇÃO DO AMBIENTE ✅

### Ambiente utilizado

- Windows
- XAMPP
- Apache
- PHP
- MySQL
- phpMyAdmin
- VS Code
- Git
- GitHub

### XAMPP

Instalação localizada em:

`C:\xampp`

Projeto localizado em:

`C:\xampp\htdocs\acao-social`

Apache testado e funcionando.

MySQL testado e funcionando.

phpMyAdmin acessível pelo navegador.

### Primeiro teste PHP

Criamos o arquivo:

`index.php`

E validamos o funcionamento através de:

`http://localhost/acao-social`

Resultado:

**PHP + Apache funcionando corretamente.**

---

# ETAPA 1 — ESTRUTURA INICIAL DO PROJETO ✅

Criamos a estrutura:

```text
acao-social/
│
├── assets/
│   ├── css/
│   │   └── style.css
│   └── js/
│       └── app.js
│
├── config/
│   └── config.example.php
│
├── controllers/
│   └── .gitkeep
│
├── database/
│   └── .gitkeep
│
├── includes/
│   └── .gitkeep
│
├── models/
│   └── .gitkeep
│
├── views/
│   └── .gitkeep
│
├── .gitignore
├── index.php
└── README.md
```

Também criamos uma página inicial simples para validar:

- PHP;
- HTML;
- carregamento do CSS;
- carregamento do JavaScript;
- estrutura do projeto.

Página funcionando corretamente em ambiente local.

---

# GIT E GITHUB ✅

Git instalado e configurado.

Repositório Git inicializado localmente.

Branch principal:

`main`

Repositório remoto criado no GitHub:

`acao-social`

Projeto local conectado ao GitHub.

Configuramos também o e-mail privado `noreply` do GitHub para não expor o e-mail pessoal nos commits públicos.

### Commits realizados

**1.**

`chore: inicia projeto acao social`

**2.**

`feat: cria estrutura inicial do projeto`

**3.**

`feat: adiciona pagina inicial do sistema`

### Estado atual do Git

`main` sincronizada com `origin/main`.

Última verificação:

`nothing to commit, working tree clean`

Portanto:

**Projeto local = Git = GitHub**

Tudo sincronizado. ✅

---

# README ✅

README inicial criado contendo:

- descrição do projeto;
- objetivo;
- problema;
- funcionalidades planejadas;
- tecnologias;
- status;
- roadmap;
- informações sobre privacidade.

README já está sendo exibido corretamente no GitHub.

---

# DECISÕES DE ARQUITETURA

### CPF

Decidimos **não utilizar CPF como Primary Key física**.

Estrutura planejada:

`id` → Primary Key interna

`cpf` → obrigatório + UNIQUE

Isso facilita manutenção, relacionamentos e evolução futura do banco.

### Arquitetura

O sistema utilizará uma organização inspirada em MVC:

- Models
- Views
- Controllers
- Config
- Includes
- Assets

Sem framework nesta primeira versão.

### Stack

**Backend:** PHP

**Banco:** MySQL

**Frontend:** HTML + CSS + JavaScript

---

# MVP PLANEJADO

O MVP deverá possuir:

- Login
- Dashboard
- Cadastro de pessoas
- Validação de CPF
- Prevenção de duplicidade
- Consulta por nome
- Consulta por CPF
- Visualização do cadastro
- Edição do cadastro
- Agenda das ações sociais

---

# MODELAGEM PREVISTA

Inicialmente teremos três entidades principais:

### USUARIOS

Responsável pela autenticação e acesso ao sistema.

### PESSOAS

Armazenará:

- dados pessoais;
- CPF;
- contato;
- endereço;
- observações;
- datas de criação/alteração.

### ACOES\_SOCIAIS

Armazenará:

- data;
- horário;
- local;
- descrição;
- status.

Nesta primeira versão, **PESSOAS e ACOES\_SOCIAIS ainda não serão relacionadas diretamente**.

Futuramente poderemos criar:

`PESSOAS → ATENDIMENTOS ← ACOES_SOCIAIS`

Permitindo histórico individual de atendimento e controle de participação nas ações.

---

# PRÓXIMA ETAPA

## ETAPA 2 — BANCO DE DADOS ⏳

Próxima sessão deverá começar daqui.

Planejado:

1. Modelar as tabelas.
2. Definir campos e tipos.
3. Definir Primary Keys.
4. Definir índices e UNIQUE.
5. Criar `database.sql`.
6. Criar banco no MySQL/phpMyAdmin.
7. Executar script.
8. Validar tabelas.
9. Versionar no Git.
10. Enviar ao GitHub.

Após isso:

**ETAPA 3 — Conexão PHP + MySQL utilizando PDO.**

---

## STATUS DO PROJETO

**Ambiente:** ✅\
**Git/GitHub:** ✅\
**Estrutura inicial:** ✅\
**Página inicial:** ✅\
**README:** ✅\
**Banco de dados:** ⏳ Próximo\
**Autenticação:** ⬜\
**Dashboard:** ⬜\
**Cadastro:** ⬜\
**Consulta:** ⬜\
**Agenda:** ⬜

**Ponto exato de retomada:** iniciar a modelagem do banco de dados do MVP.
