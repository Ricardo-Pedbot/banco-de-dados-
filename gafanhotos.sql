-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: docker_mysql_1
-- Tempo de geração: 21/03/2023 às 23:14
-- Versão do servidor: 5.7.41
-- Versão do PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cadastro`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `gafanhotos`
--

DROP TABLE IF EXISTS `gafanhotos`;
CREATE TABLE IF NOT EXISTS `gafanhotos` (
  `codigo` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `profissao` varchar(20) NOT NULL DEFAULT ' ',
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brazil',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `gafanhotos`
--

INSERT INTO `gafanhotos` (`codigo`, `id`, `nome`, `profissao`, `nascimento`, `sexo`, `peso`, `altura`, `nacionalidade`) VALUES
(NULL, 1, 'Godofredo', '', '1984-01-02', 'M', 78.50, 1.83, 'Brasil'),
(NULL, 2, 'Maria', '', '1995-06-12', 'F', 70.00, 1.70, 'Brasil'),
(NULL, 3, 'Gabriel', ' ', '1987-03-05', 'M', 80.00, 1.80, 'Itália'),
(NULL, 4, 'Talita', ' ', '1998-08-10', 'F', 70.00, 1.75, 'Inglesa');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
