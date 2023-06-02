-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Dez-2022 às 08:37
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `academia_dicas`
--
DROP DATABASE IF EXISTS `academia_dicas`;
CREATE DATABASE IF NOT EXISTS `academia_dicas` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `academia_dicas`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--
-- Criação: 25-Nov-2022 às 18:41
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `senha` varchar(40) NOT NULL,
  `sal` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`),
  UNIQUE KEY `login_2` (`login`),
  UNIQUE KEY `login_3` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `admin`:
--

--
-- Truncar tabela antes do insert `admin`
--

TRUNCATE TABLE `admin`;
--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `login`, `senha`, `sal`) VALUES
(1, 'admin', 'c3ec5e5439a6be876da69cd0e5ee1410681b16d6', 1552179828);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--
-- Criação: 25-Nov-2022 às 18:41
--

DROP TABLE IF EXISTS `contato`;
CREATE TABLE IF NOT EXISTS `contato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `idade` tinyint(3) UNSIGNED NOT NULL,
  `email` varchar(70) NOT NULL,
  `sexo` enum('M','F','O') NOT NULL DEFAULT 'O',
  `mensagem` text DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `contato`:
--

--
-- Truncar tabela antes do insert `contato`
--

TRUNCATE TABLE `contato`;
--
-- Extraindo dados da tabela `contato`
--

INSERT INTO `contato` (`id`, `nome`, `idade`, `email`, `sexo`, `mensagem`, `data`) VALUES
(1, 'aaaaaaaa', 14, 'aaaaaaaaa@aaaaaaaaaa', 'O', 'aaaaaaaaa', '2022-04-18');
--
-- Banco de dados: `auto_escola_dicas`
--
DROP DATABASE IF EXISTS `auto_escola_dicas`;
CREATE DATABASE IF NOT EXISTS `auto_escola_dicas` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `auto_escola_dicas`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--
-- Criação: 25-Nov-2022 às 18:41
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `senha` varchar(40) NOT NULL,
  `sal` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `admin`:
--

--
-- Truncar tabela antes do insert `admin`
--

TRUNCATE TABLE `admin`;
--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `login`, `senha`, `sal`) VALUES
(1, 'admin', 'c0d2e5f775bce25ab9ccc7cebd732505004fdb2a', 1552180085);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--
-- Criação: 25-Nov-2022 às 18:41
--

DROP TABLE IF EXISTS `contato`;
CREATE TABLE IF NOT EXISTS `contato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) NOT NULL,
  `email` varchar(100) NOT NULL,
  `opcao` varchar(100) NOT NULL,
  `idade` int(11) NOT NULL,
  `mensagem` text NOT NULL,
  `arquivo` varchar(50) NOT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `contato`:
--

--
-- Truncar tabela antes do insert `contato`
--

TRUNCATE TABLE `contato`;--
-- Banco de dados: `churrasco_dicas`
--
DROP DATABASE IF EXISTS `churrasco_dicas`;
CREATE DATABASE IF NOT EXISTS `churrasco_dicas` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `churrasco_dicas`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--
-- Criação: 25-Nov-2022 às 18:41
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `senha` varchar(40) NOT NULL,
  `sal` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `admin`:
--

--
-- Truncar tabela antes do insert `admin`
--

TRUNCATE TABLE `admin`;
--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `login`, `senha`, `sal`) VALUES
(1, 'admin', 'd86454d0204388de77a8a87e2cccca10ef4dfd15', 1552603766);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `contato`;
CREATE TABLE IF NOT EXISTS `contato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) NOT NULL,
  `mail` varchar(70) NOT NULL,
  `sexo` enum('M','F','O') NOT NULL DEFAULT 'O',
  `mensagem` text NOT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `contato`:
--

--
-- Truncar tabela antes do insert `contato`
--

TRUNCATE TABLE `contato`;--
-- Banco de dados: `comemora_carnaval`
--
DROP DATABASE IF EXISTS `comemora_carnaval`;
CREATE DATABASE IF NOT EXISTS `comemora_carnaval` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `comemora_carnaval`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) DEFAULT NULL,
  `senha` varchar(40) DEFAULT NULL,
  `sal` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `admin`:
--

--
-- Truncar tabela antes do insert `admin`
--

TRUNCATE TABLE `admin`;
--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `login`, `senha`, `sal`) VALUES
(1, 'admin', 'c2c9d4f4c537f1614ffdcce40fb2e00f7338ca9f', 1569882535);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `contato`;
CREATE TABLE IF NOT EXISTS `contato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `sexo` enum('M','F','O') NOT NULL DEFAULT 'O',
  `mensagem` text DEFAULT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `contato`:
--

--
-- Truncar tabela antes do insert `contato`
--

TRUNCATE TABLE `contato`;--
-- Banco de dados: `cozinha_receitas`
--
DROP DATABASE IF EXISTS `cozinha_receitas`;
CREATE DATABASE IF NOT EXISTS `cozinha_receitas` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cozinha_receitas`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `senha` varchar(40) NOT NULL,
  `sal` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`),
  UNIQUE KEY `login_2` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `admin`:
--

--
-- Truncar tabela antes do insert `admin`
--

TRUNCATE TABLE `admin`;
--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `login`, `senha`, `sal`) VALUES
(1, 'admin', '463aaa7ac72e92bbe0e8d307432f51fdfa4d6116', 1552178253);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `contato`;
CREATE TABLE IF NOT EXISTS `contato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) NOT NULL,
  `mail` varchar(70) NOT NULL,
  `sexo` enum('M','F','O') NOT NULL DEFAULT 'O',
  `motivo` varchar(40) NOT NULL,
  `mensagem` text NOT NULL,
  `envio` enum('Sim','Não') NOT NULL DEFAULT 'Não',
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `contato`:
--

--
-- Truncar tabela antes do insert `contato`
--

TRUNCATE TABLE `contato`;--
-- Banco de dados: `curiosidades_cerveja`
--
DROP DATABASE IF EXISTS `curiosidades_cerveja`;
CREATE DATABASE IF NOT EXISTS `curiosidades_cerveja` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `curiosidades_cerveja`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(40) NOT NULL,
  `senha` varchar(40) NOT NULL,
  `sal` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `admin`:
--

--
-- Truncar tabela antes do insert `admin`
--

TRUNCATE TABLE `admin`;
--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `login`, `senha`, `sal`) VALUES
(1, 'admin', 'ba5b4caf4c6a390e7183889a83da7585c5e83217', 1552345678);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `contato`;
CREATE TABLE IF NOT EXISTS `contato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) NOT NULL,
  `mail` varchar(70) NOT NULL,
  `idade` tinyint(3) UNSIGNED NOT NULL,
  `sexo` enum('M','F','O') NOT NULL DEFAULT 'O',
  `cerveja` varchar(20) NOT NULL,
  `mensagem` text DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `contato`:
--

--
-- Truncar tabela antes do insert `contato`
--

TRUNCATE TABLE `contato`;--
-- Banco de dados: `desenhos_dicas`
--
DROP DATABASE IF EXISTS `desenhos_dicas`;
CREATE DATABASE IF NOT EXISTS `desenhos_dicas` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `desenhos_dicas`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(15) NOT NULL,
  `senha` varchar(40) NOT NULL,
  `sal` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `admin`:
--

--
-- Truncar tabela antes do insert `admin`
--

TRUNCATE TABLE `admin`;
--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `login`, `senha`, `sal`) VALUES
(1, 'admin', '70754c6cc5e21bbdaea6f7de4c4c44d145a7fc87', 1589466957);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `contato`;
CREATE TABLE IF NOT EXISTS `contato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) NOT NULL,
  `email` varchar(75) NOT NULL,
  `sexo` enum('M','F','O') NOT NULL DEFAULT 'O',
  `assunto` varchar(25) NOT NULL,
  `mensagem` text NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `contato`:
--

--
-- Truncar tabela antes do insert `contato`
--

TRUNCATE TABLE `contato`;--
-- Banco de dados: `espaco_geek`
--
DROP DATABASE IF EXISTS `espaco_geek`;
CREATE DATABASE IF NOT EXISTS `espaco_geek` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `espaco_geek`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `entretenimento`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `entretenimento`;
CREATE TABLE IF NOT EXISTS `entretenimento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(50) NOT NULL,
  `data` date NOT NULL,
  `titulo` varchar(120) NOT NULL,
  `conteudo` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `entretenimento`:
--

--
-- Truncar tabela antes do insert `entretenimento`
--

TRUNCATE TABLE `entretenimento`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `imagens`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `imagens`;
CREATE TABLE IF NOT EXISTS `imagens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `imagens`:
--

--
-- Truncar tabela antes do insert `imagens`
--

TRUNCATE TABLE `imagens`;
--
-- Extraindo dados da tabela `imagens`
--

INSERT INTO `imagens` (`id`, `nome`) VALUES
(3, '1516812288.jpeg'),
(4, '1516812294.jpeg'),
(5, '1516812303.jpeg'),
(6, '1516812322.gif'),
(7, '1516813088.gif'),
(8, '1528793885.jpeg'),
(9, '1528793926.jpeg');
--
-- Banco de dados: `gatos_site`
--
DROP DATABASE IF EXISTS `gatos_site`;
CREATE DATABASE IF NOT EXISTS `gatos_site` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `gatos_site`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `senha` varchar(40) NOT NULL,
  `sal` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `admin`:
--

--
-- Truncar tabela antes do insert `admin`
--

TRUNCATE TABLE `admin`;
--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `login`, `senha`, `sal`) VALUES
(1, 'admin', 'bab29ed168d262c1583af7b961ed5896170f81d5', 1617978301);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `contato`;
CREATE TABLE IF NOT EXISTS `contato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) NOT NULL,
  `email` varchar(70) NOT NULL,
  `sexo` enum('M','F','O') NOT NULL,
  `mensagem` text DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `contato`:
--

--
-- Truncar tabela antes do insert `contato`
--

TRUNCATE TABLE `contato`;--
-- Banco de dados: `injection_teste`
--
DROP DATABASE IF EXISTS `injection_teste`;
CREATE DATABASE IF NOT EXISTS `injection_teste` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `injection_teste`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `senha` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `admin`:
--

--
-- Truncar tabela antes do insert `admin`
--

TRUNCATE TABLE `admin`;
--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `login`, `senha`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `contato`;
CREATE TABLE IF NOT EXISTS `contato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `idade` tinyint(4) DEFAULT NULL,
  `email` varchar(90) DEFAULT NULL,
  `sexo` enum('M','F','O') DEFAULT NULL,
  `mensagem` text DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `contato`:
--

--
-- Truncar tabela antes do insert `contato`
--

TRUNCATE TABLE `contato`;--
-- Banco de dados: `intro_plugdj`
--
DROP DATABASE IF EXISTS `intro_plugdj`;
CREATE DATABASE IF NOT EXISTS `intro_plugdj` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `intro_plugdj`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(20) NOT NULL,
  `senha` varchar(40) NOT NULL,
  `sal` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `admin`:
--

--
-- Truncar tabela antes do insert `admin`
--

TRUNCATE TABLE `admin`;
--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `login`, `senha`, `sal`) VALUES
(1, 'admin', '75329f1ccc8091685f266143f2f903acdd00ebb6', 1569445896);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `contato`;
CREATE TABLE IF NOT EXISTS `contato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) NOT NULL,
  `email` varchar(70) NOT NULL,
  `sexo` enum('M','F','O') NOT NULL DEFAULT 'O',
  `mensagem` text DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `contato`:
--

--
-- Truncar tabela antes do insert `contato`
--

TRUNCATE TABLE `contato`;--
-- Banco de dados: `musica_dicas`
--
DROP DATABASE IF EXISTS `musica_dicas`;
CREATE DATABASE IF NOT EXISTS `musica_dicas` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `musica_dicas`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `senha` varchar(40) NOT NULL,
  `sal` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`),
  UNIQUE KEY `login_2` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `admin`:
--

--
-- Truncar tabela antes do insert `admin`
--

TRUNCATE TABLE `admin`;
--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `login`, `senha`, `sal`) VALUES
(1, 'admin', '314161a4d682640efcf68c520f4516d8ce9485ea', 1552402900);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `contato`;
CREATE TABLE IF NOT EXISTS `contato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mensagem` text DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `contato`:
--

--
-- Truncar tabela antes do insert `contato`
--

TRUNCATE TABLE `contato`;--
-- Banco de dados: `noticias_gerais`
--
DROP DATABASE IF EXISTS `noticias_gerais`;
CREATE DATABASE IF NOT EXISTS `noticias_gerais` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `noticias_gerais`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `senha` varchar(40) NOT NULL,
  `sal` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `admin`:
--

--
-- Truncar tabela antes do insert `admin`
--

TRUNCATE TABLE `admin`;
--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `login`, `senha`, `sal`) VALUES
(1, 'admin', '72fcb48ee38d2bf792f25e741d377ef8295f57cb', 1650375114);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `contato`;
CREATE TABLE IF NOT EXISTS `contato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) NOT NULL,
  `email` varchar(65) NOT NULL,
  `sexo` enum('M','F','O') NOT NULL DEFAULT 'O',
  `urgencia` tinyint(4) NOT NULL,
  `mensagem` text NOT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `contato`:
--

--
-- Truncar tabela antes do insert `contato`
--

TRUNCATE TABLE `contato`;--
-- Banco de dados: `pagina_cadastro`
--
DROP DATABASE IF EXISTS `pagina_cadastro`;
CREATE DATABASE IF NOT EXISTS `pagina_cadastro` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `pagina_cadastro`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(65) NOT NULL,
  `profissao` varchar(65) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `usuarios`:
--

--
-- Truncar tabela antes do insert `usuarios`
--

TRUNCATE TABLE `usuarios`;--
-- Banco de dados: `pintura_digital_dicas`
--
DROP DATABASE IF EXISTS `pintura_digital_dicas`;
CREATE DATABASE IF NOT EXISTS `pintura_digital_dicas` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `pintura_digital_dicas`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `senha` varchar(40) NOT NULL,
  `sal` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `admin`:
--

--
-- Truncar tabela antes do insert `admin`
--

TRUNCATE TABLE `admin`;
--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `login`, `senha`, `sal`) VALUES
(1, 'admin', '2a4787205f3b924e64a43c060f63f6838695e138', 1650290257);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `contato`;
CREATE TABLE IF NOT EXISTS `contato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) NOT NULL,
  `email` varchar(65) NOT NULL,
  `sexo` enum('M','F','O') NOT NULL DEFAULT 'O',
  `mensagem` text NOT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `contato`:
--

--
-- Truncar tabela antes do insert `contato`
--

TRUNCATE TABLE `contato`;--
-- Banco de dados: `revolucionarios_axe`
--
DROP DATABASE IF EXISTS `revolucionarios_axe`;
CREATE DATABASE IF NOT EXISTS `revolucionarios_axe` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `revolucionarios_axe`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `senha` varchar(40) NOT NULL,
  `sal` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `admin`:
--

--
-- Truncar tabela antes do insert `admin`
--

TRUNCATE TABLE `admin`;
--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `login`, `senha`, `sal`) VALUES
(1, 'admin', '1d7a3229fa70c3e2eff766d8a3948d6fc174373e', 1552406223);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `contato`;
CREATE TABLE IF NOT EXISTS `contato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) NOT NULL,
  `mail` varchar(70) NOT NULL,
  `sexo` enum('M','F','O') NOT NULL DEFAULT 'O',
  `mensagem` text DEFAULT NULL,
  `envio` enum('Sim','Não') NOT NULL DEFAULT 'Não',
  `data` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `contato`:
--

--
-- Truncar tabela antes do insert `contato`
--

TRUNCATE TABLE `contato`;--
-- Banco de dados: `site_quadrinhos`
--
DROP DATABASE IF EXISTS `site_quadrinhos`;
CREATE DATABASE IF NOT EXISTS `site_quadrinhos` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `site_quadrinhos`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `senha` varchar(40) NOT NULL,
  `sal` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`),
  UNIQUE KEY `login_2` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `admin`:
--

--
-- Truncar tabela antes do insert `admin`
--

TRUNCATE TABLE `admin`;
--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `login`, `senha`, `sal`) VALUES
(1, 'admin', '501aa7e20993e663b1c3370ef9c0c6b96178cf42', 1552179578);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `contato`;
CREATE TABLE IF NOT EXISTS `contato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) NOT NULL,
  `email` varchar(70) NOT NULL,
  `mensagem` text NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `contato`:
--

--
-- Truncar tabela antes do insert `contato`
--

TRUNCATE TABLE `contato`;--
-- Banco de dados: `veiculos_site`
--
DROP DATABASE IF EXISTS `veiculos_site`;
CREATE DATABASE IF NOT EXISTS `veiculos_site` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `veiculos_site`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `senha` varchar(40) NOT NULL,
  `sal` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `admin`:
--

--
-- Truncar tabela antes do insert `admin`
--

TRUNCATE TABLE `admin`;
--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `login`, `senha`, `sal`) VALUES
(1, 'admin', '8926581c4d7c771a18f032f1e2cc96abcced9dfc', 1588978018);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--
-- Criação: 25-Nov-2022 às 18:42
--

DROP TABLE IF EXISTS `contato`;
CREATE TABLE IF NOT EXISTS `contato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) NOT NULL,
  `email` varchar(70) NOT NULL,
  `idade` tinyint(3) UNSIGNED NOT NULL,
  `sexo` enum('M','F','O') NOT NULL DEFAULT 'O',
  `mensagem` text NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELACIONAMENTOS PARA TABELAS `contato`:
--

--
-- Truncar tabela antes do insert `contato`
--

TRUNCATE TABLE `contato`;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
