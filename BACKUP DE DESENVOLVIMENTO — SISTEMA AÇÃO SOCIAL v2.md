# BACKUP DE DESENVOLVIMENTO — SISTEMA AÇÃO SOCIAL

**Projeto:** Sistema Web de Cadastro — Ação Social  
**Versão do backup:** V2  
**Repositório:** `acao-social`  
**Status atual:** 🟢 Em desenvolvimento  
**Etapa atual:** Etapa 2 concluída → Próxima: Etapa 3 — Conexão PHP + MySQL com PDO

---

## 1. Objetivo do projeto

Desenvolver um sistema web simples para uma ação social que atende pessoas carentes e pessoas com enfermidades.

Atualmente, os dados são registrados manualmente, causando:

- possibilidade de cadastros duplicados;
- necessidade de preencher repetidamente os mesmos dados;
- dificuldade para consultar pessoas já atendidas;
- ausência de uma base centralizada;
- dificuldade para organizar as próximas ações sociais.

O projeto está sendo desenvolvido de forma incremental e também será utilizado como **projeto de portfólio no GitHub**.

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
│   ├── .gitkeep
│   └── database.sql
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

### Commits realizados até a V2

**1.**

`chore: inicia projeto acao social`

**2.**

`feat: cria estrutura inicial do projeto`

**3.**

`feat: adiciona pagina inicial do sistema`

**4.**

`feat: cria estrutura inicial do banco de dados`

Também foram realizados commits no GitHub referentes ao documento de backup do desenvolvimento.

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

README sendo exibido corretamente no GitHub.

---

# DECISÕES DE ARQUITETURA

## CPF

Decidimos **não utilizar CPF como Primary Key física**.

Estrutura:

`id` → Primary Key interna

`cpf` → obrigatório + UNIQUE

Motivos:

- facilita relacionamentos;
- simplifica manutenção;
- permite evolução futura;
- mantém o CPF como regra de unicidade sem acoplar a identidade técnica da tabela ao dado documental.

O CPF será salvo somente com números:

`12345678901`

A máscara será tratada na interface.

---

## Arquitetura

O sistema utiliza uma organização inspirada em MVC:

- Models
- Views
- Controllers
- Config
- Includes
- Assets

Sem framework nesta primeira versão.

---

## Stack

**Backend:** PHP

**Banco:** MySQL

**Frontend:** HTML + CSS + JavaScript

**Banco acessado localmente por:** phpMyAdmin

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

# ETAPA 2 — BANCO DE DADOS ✅

A modelagem inicial do banco foi concluída.

Banco criado:

`acao_social`

Foram criadas três tabelas:

```text
acao_social
│
├── usuarios
├── pessoas
└── acoes_sociais
```

Nesta versão, as tabelas ainda não possuem relacionamentos entre si.

---

## TABELA `usuarios`

Responsável pela autenticação do sistema.

Campos:

- `id`
- `nome`
- `usuario`
- `senha`
- `ativo`
- `created_at`
- `updated_at`

Regras principais:

- `id` como Primary Key;
- `usuario` com restrição UNIQUE;
- senha preparada para armazenamento com hash;
- usuário pode ser marcado como ativo/inativo.

---

## TABELA `pessoas`

Tabela principal do sistema.

Campos:

- `id`
- `nome`
- `cpf`
- `data_nascimento`
- `telefone`
- `cep`
- `endereco`
- `numero`
- `complemento`
- `bairro`
- `cidade`
- `estado`
- `observacoes`
- `created_at`
- `updated_at`

Regras principais:

`id`

- Primary Key;
- AUTO_INCREMENT.

`cpf`

- obrigatório;
- `CHAR(11)`;
- UNIQUE;
- salvo somente com números.

`nome`

- obrigatório;
- índice criado para auxiliar consultas.

Datas de criação e atualização são gerenciadas automaticamente pelo banco.

---

## TABELA `acoes_sociais`

Responsável pela agenda.

Campos:

- `id`
- `titulo`
- `data_acao`
- `hora`
- `local`
- `descricao`
- `observacoes`
- `status`
- `created_at`
- `updated_at`

Status disponíveis:

- `agendada`
- `realizada`
- `cancelada`

Foram criados índices para:

- `data_acao`
- `status`

---

# SCRIPT DO BANCO ✅

Criado o arquivo:

`database/database.sql`

O script contém:

- criação do banco;
- charset `utf8mb4`;
- collation `utf8mb4_unicode_ci`;
- criação das três tabelas;
- Primary Keys;
- UNIQUE;
- índices;
- timestamps automáticos.

O script foi executado com sucesso no phpMyAdmin.

---

# VALIDAÇÃO DO BANCO ✅

Foi validada manualmente a estrutura da tabela `pessoas`.

Confirmado:

- `PRIMARY` → `id`
- `uq_pessoas_cpf` → `cpf`
- `idx_pessoas_nome` → `nome`

Também foi executado teste de duplicidade.

Primeiro registro com CPF fictício:

**Inserido com sucesso.**

Segundo registro com o mesmo CPF:

**Recusado pelo MySQL por violação da restrição UNIQUE.**

Resultado:

A regra de unicidade do CPF está protegida diretamente no banco de dados.

Após o teste, o registro fictício foi removido.

Banco ficou novamente limpo.

---

# DECISÃO SOBRE RELACIONAMENTOS

Nesta primeira versão:

**PESSOAS e ACOES_SOCIAIS não serão relacionadas diretamente.**

A agenda terá função apenas administrativa.

Futuramente poderá ser criada uma estrutura como:

`PESSOAS → ATENDIMENTOS ← ACOES_SOCIAIS`

Permitindo:

- histórico de atendimentos;
- controle de presença;
- quantidade de pessoas atendidas por ação;
- consulta da última participação de uma pessoa;
- histórico individual.

Essa evolução ficará para versões futuras.

---

# CONTROLE DE BACKUP

Os backups do andamento do projeto serão mantidos por versão.

Padrão:

```text
BACKUP_DESENVOLVIMENTO_V1.md
BACKUP_DESENVOLVIMENTO_V2.md
BACKUP_DESENVOLVIMENTO_V3.md
...
```

Objetivo:

- preservar decisões técnicas;
- registrar progresso;
- facilitar retomada;
- evitar perda de contexto;
- manter histórico paralelo ao Git.

A V2 representa o encerramento da Etapa 2.

---

# PRÓXIMA ETAPA

## ETAPA 3 — CONEXÃO PHP + MYSQL COM PDO ⏳

Próxima sessão deverá começar daqui.

Planejado:

1. Configurar dados de conexão.
2. Manter credenciais reais fora do GitHub.
3. Utilizar `config.example.php` como modelo público.
4. Criar arquivo local de configuração.
5. Criar conexão utilizando PDO.
6. Configurar tratamento de erros.
7. Testar conexão PHP → MySQL.
8. Criar teste simples de consulta.
9. Validar funcionamento no navegador.
10. Versionar somente arquivos seguros.
11. Atualizar README se necessário.
12. Fazer commit e push.

Após isso:

**ETAPA 4 — Login e autenticação.**

---

# ROADMAP ATUAL

**Etapa 0 — Ambiente:** ✅  
**Etapa 1 — Estrutura inicial:** ✅  
**Etapa 2 — Banco de dados:** ✅  
**Etapa 3 — Conexão PHP + MySQL:** ⏳  
**Etapa 4 — Login:** ⬜  
**Etapa 5 — Dashboard:** ⬜  
**Etapa 6 — Cadastro de pessoas:** ⬜  
**Etapa 7 — Consulta:** ⬜  
**Etapa 8 — Visualização/Edição:** ⬜  
**Etapa 9 — Agenda:** ⬜  
**Etapa 10 — Revisão de segurança:** ⬜  

---

# STATUS DO PROJETO — V2

**Ambiente:** ✅  
**Git/GitHub:** ✅  
**Estrutura inicial:** ✅  
**Página inicial:** ✅  
**README:** ✅  
**Banco de dados:** ✅  
**Teste de unicidade do CPF:** ✅  
**Script SQL versionado:** ✅  
**Autenticação:** ⬜  
**Dashboard:** ⬜  
**Cadastro:** ⬜  
**Consulta:** ⬜  
**Agenda:** ⬜  

**Ponto exato de retomada:** iniciar a conexão do PHP com o MySQL utilizando PDO, mantendo credenciais reais fora do repositório público.