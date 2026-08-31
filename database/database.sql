CREATE DATABASE IF NOT EXISTS acao_social
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE acao_social;

CREATE TABLE usuarios (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    usuario VARCHAR(100) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    ativo TINYINT(1) NOT NULL DEFAULT 1,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT uq_usuarios_usuario UNIQUE (usuario)
) ENGINE=InnoDB;

CREATE TABLE pessoas (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    cpf CHAR(11) NOT NULL,
    data_nascimento DATE NULL,
    telefone VARCHAR(20) NULL,
    cep CHAR(8) NULL,
    endereco VARCHAR(200) NULL,
    numero VARCHAR(20) NULL,
    complemento VARCHAR(100) NULL,
    bairro VARCHAR(100) NULL,
    cidade VARCHAR(100) NULL,
    estado CHAR(2) NULL,
    observacoes TEXT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT uq_pessoas_cpf UNIQUE (cpf),
    INDEX idx_pessoas_nome (nome)
) ENGINE=InnoDB;

CREATE TABLE acoes_sociais (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    data_acao DATE NOT NULL,
    hora TIME NULL,
    local VARCHAR(200) NULL,
    descricao TEXT NULL,
    observacoes TEXT NULL,
    status ENUM(
        'agendada',
        'realizada',
        'cancelada'
    ) NOT NULL DEFAULT 'agendada',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    INDEX idx_acoes_data (data_acao),
    INDEX idx_acoes_status (status)
) ENGINE=InnoDB;
