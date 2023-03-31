-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: docker_mysql_1
-- Tempo de geração: 22/03/2023 às 22:54
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
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `idcurso` int(11) NOT NULL DEFAULT '0',
  `nome` varchar(30) NOT NULL,
  `descricao` text,
  `carga` int(10) UNSIGNED DEFAULT NULL,
  `totaulas` int(10) UNSIGNED DEFAULT NULL,
  `ano` year(4) DEFAULT '2016'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`idcurso`, `nome`, `descricao`, `carga`, `totaulas`, `ano`) VALUES
(1, 'HTML5', 'Curso de HTML5', 40, 37, '2014'),
(2, 'Algoritmos', 'Lógica de Programação', 20, 15, '2014'),
(3, 'Photoshop5', 'Dicas de Photoshop CC', 10, 8, '2014'),
(4, 'PHP', 'Curso de PHP para iniciantes', 40, 20, '2015'),
(5, 'Java', 'Introdução à Linguagem Java', 40, 29, '2015'),
(6, 'MySQL', 'Bancos de Dados MySQL', 30, 15, '2016'),
(7, 'Word', 'Curso completo de Word', 40, 30, '2016'),
(8, 'Python', 'Curso de Python', 40, 18, '2017'),
(9, 'POO', 'Curso de Programação Orientada a Objetos', 60, 35, '2016'),
(10, 'Excel', 'Curso completo de Excel', 40, 30, '2017'),
(11, 'Responsividade', 'Curso de Responsividade', 30, 15, '2018'),
(12, 'C++', 'Curso de C++ com Orientação a Objetos', 40, 25, '2017'),
(13, 'C#', 'Curso de C#', 30, 12, '2017'),
(14, 'Android', 'Curso de Desenvolvimento de Aplicativos para Android', 60, 30, '2018'),
(15, 'JavaScript', 'Curso de JavaScript', 35, 18, '2017'),
(16, 'PowerPoint', 'Curso completo de PowerPoint', 30, 12, '2018'),
(17, 'Swift', 'Curso de Desenvolvimento de Aplicativos para iOS', 60, 30, '2019'),
(18, 'Hardware', 'Curso de Montagem e Manutenção de PCs', 30, 12, '2017'),
(19, 'Redes', 'Curso de Redes para Iniciantes', 40, 15, '2016'),
(20, 'Segurança', 'Curso de Segurança', 15, 8, '2018'),
(21, 'SEO', 'Curso de Otimização de Sites', 30, 12, '2017'),
(22, 'Premiere', 'Curso de Edição de Vídeos com Premiere', 20, 10, '2017'),
(23, 'After Effects', 'Curso de Efeitos em Vídeos com After Effects', 20, 10, '2018'),
(24, 'WordPress', 'Curso de Criação de Sites com WordPress', 60, 30, '2019'),
(25, 'Joomla', 'Curso de Criação de Sites com Joomla', 60, 30, '2019'),
(26, 'Magento', 'Curso de Criação de Lojas Virtuais com Magento', 50, 25, '2019'),
(27, 'Modelagem de Dados', 'Curso de Modelagem de Dados', 30, 12, '2020'),
(28, 'HTML4', 'Curso Básico de HTML, versão 4.0', 20, 9, '2010'),
(29, 'PHP7', 'Curso de PHP, versão 7.0', 40, 20, '2020'),
(30, 'PHP4', 'Curso de PHP, versão 4.0', 30, 11, '2010');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`idcurso`),
  ADD UNIQUE KEY `nome` (`nome`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
