-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: docker_mysql_1
-- Tempo de geração: 26/03/2023 às 23:15
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
-- Banco de dados: `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `library`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'j.r.r. tolkein'),
(2, 'c.s. lewis'),
(3, 'rick riordan'),
(4, 'lewis carroll'),
(5, 'stephen king');

-- --------------------------------------------------------

--
-- Estrutura para tabela `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `titule` varchar(100) NOT NULL,
  `page` float NOT NULL,
  `realese_date` year(4) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `library_id` int(11) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `books`
--

INSERT INTO `books` (`id`, `titule`, `page`, `realese_date`, `author_id`, `library_id`, `publisher_id`) VALUES
(1, 'the hobbit', 310, '1937', 1, NULL, NULL),
(2, 'the lord of the rings - a trilogia', 1.216, '1955', 1, NULL, NULL),
(3, 'the silmarillion', 365, '1977', 1, NULL, NULL),
(4, 'o leão, a feiticeira e o guarda-roupa', 208, '1950', 2, NULL, NULL),
(5, 'príncipe caspian', 240, '1951', 2, NULL, NULL),
(6, 'a viagem do peregrino da alvorada', 256, '1952', 2, NULL, NULL),
(7, 'carrie', 199, '1974', 5, NULL, NULL),
(8, 'o iluminado', 447, '1977', 5, NULL, NULL),
(9, 'a dança da morte', 1376, '1978', 5, NULL, NULL),
(10, 'a espera de um milagre', 576, '1996', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `costumers`
--

CREATE TABLE `costumers` (
  `id` int(11) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `costumers`
--

INSERT INTO `costumers` (`id`, `cpf`, `name`, `phone_number`, `address`) VALUES
(1, '489.983.983-76', 'rodrigo pereira', '88 99567-4356', 'rua fipisa morais'),
(2, '982.183.932-76', 'rachel frias', '23 6709-3246', 'rua gosmar travel'),
(3, '234.645.756-67', 'gabriela palmas', '24 6576-8649', 'av paes leme'),
(4, '456.634.543-64', 'heitor aparecido', '87 9843-2432', 'rua marechal ubatuba'),
(5, '456.532.123-64', 'rogerio paz', '17 5436-2432', 'rua paraiso imperial'),
(6, '485-569-951-58', 'ricardo alexandre', '89 6952-9659', 'rua indio barueri');

-- --------------------------------------------------------

--
-- Estrutura para tabela `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pis` varchar(15) NOT NULL,
  `office` varchar(50) NOT NULL,
  `departament` varchar(50) NOT NULL,
  `library_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `employees`
--

INSERT INTO `employees` (`id`, `name`, `pis`, `office`, `departament`, `library_id`) VALUES
(1, 'yago martins', '383.32145.32-3', 'empilhador', 'estoque', NULL),
(2, 'lucas ferneda', '453.65457.35-7', 'empilhador', 'estoque', NULL),
(3, 'roberto augusto', '653.65457.35-8', 'empilhador', 'estoque', NULL),
(4, 'roberto augusto', '753.55477.55-0', 'empilhador', 'estoque', NULL),
(5, 'alan torqueta', '853.25477.55-0', 'gerente', 'estoque', NULL),
(6, 'julia rowbergue', '133.22477.45-0', 'gerente', 'estoque', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `libraries`
--

CREATE TABLE `libraries` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `libraries`
--

INSERT INTO `libraries` (`id`, `name`) VALUES
(1, 'majestbooks');

-- --------------------------------------------------------

--
-- Estrutura para tabela `publishers`
--

CREATE TABLE `publishers` (
  `id` int(11) NOT NULL,
  `name` varchar(155) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone_number` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `address`, `phone_number`) VALUES
(1, 'houghton mifflin harcourt', 'rua seilaqualé', '24 4325-5465'),
(2, 'harpercollins publishers', 'rua quaqluercoisa', '12 2131-3123'),
(3, 'the folio society', 'av fim de mundo', '65 1234-6433'),
(4, 'suma de letras', 'rua aqui é brasil', '69 2344-5234');

-- --------------------------------------------------------

--
-- Estrutura para tabela `rentals`
--

CREATE TABLE `rentals` (
  `id` int(11) NOT NULL,
  `rental` date NOT NULL,
  `delivery` date NOT NULL,
  `costumer_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `rentals`
--

INSERT INTO `rentals` (`id`, `rental`, `delivery`, `costumer_id`, `book_id`, `employee_id`) VALUES
(1, '2023-02-02', '2023-03-10', 6, 7, 6),
(2, '2023-02-04', '2023-02-24', 3, 1, 5),
(3, '2023-03-02', '2023-03-24', 2, 2, 5),
(4, '2023-01-02', '2023-02-20', 4, 5, 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `library_id` (`library_id`),
  ADD KEY `publisher_id` (`publisher_id`);

--
-- Índices de tabela `costumers`
--
ALTER TABLE `costumers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices de tabela `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pis` (`pis`),
  ADD KEY `library_id` (`library_id`);

--
-- Índices de tabela `libraries`
--
ALTER TABLE `libraries`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `costumer_id` (`costumer_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `costumers`
--
ALTER TABLE `costumers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `libraries`
--
ALTER TABLE `libraries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `rentals`
--
ALTER TABLE `rentals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`library_id`) REFERENCES `libraries` (`id`),
  ADD CONSTRAINT `books_ibfk_3` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`);

--
-- Restrições para tabelas `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`library_id`) REFERENCES `libraries` (`id`);

--
-- Restrições para tabelas `rentals`
--
ALTER TABLE `rentals`
  ADD CONSTRAINT `rentals_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `rentals_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `rentals_ibfk_3` FOREIGN KEY (`costumer_id`) REFERENCES `costumers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
