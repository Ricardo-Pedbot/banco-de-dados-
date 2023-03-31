-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: docker_mysql_1
-- Tempo de geração: 26/03/2023 às 23:16
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
-- Banco de dados: `inventory`
--
CREATE DATABASE IF NOT EXISTS `inventory` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `inventory`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cnpj` varchar(15) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `companies`
--

INSERT INTO `companies` (`id`, `name`, `cnpj`, `phone_number`) VALUES
(1, 'belanorts', '12234234234334', '14 8984-4895');

-- --------------------------------------------------------

--
-- Estrutura para tabela `costumers`
--

CREATE TABLE `costumers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `costumers`
--

INSERT INTO `costumers` (`id`, `name`, `cpf`, `phone_number`, `address`) VALUES
(1, 'rodrigo pereira', '489.983.983-76', '88 99567-4356', 'rua fipisa morais'),
(2, 'rachel frias', '982.183.932-76', '23 6709-3246', 'rua gosmar travel'),
(3, 'gabriela palmas', '234.645.756-67', '24 6576-8649', 'av paes leme'),
(4, 'heitor aparecido', '456.634.543-64', '87 9843-2432', 'rua marechal ubatuba'),
(5, 'rogerio paz', '456.532.123-64', '17 5436-2432', 'rua paraiso imperial'),
(6, 'ricardo alexandre', '485-569-951-58', '89 6952-9659', 'rua indio barueri');

-- --------------------------------------------------------

--
-- Estrutura para tabela `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `pis` varchar(15) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `companie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `employees`
--

INSERT INTO `employees` (`id`, `name`, `pis`, `phone_number`, `companie_id`) VALUES
(1, 'yago martins', '383.32145.32-3', '14 8748-9846', 1),
(2, 'lucas ferneda', '453.65457.35-7', '15 9849-4984', 1),
(3, 'roberto augusto', '653.65457.35-8', '14 8974-9159', 1),
(4, 'roberto augusto', '753.55477.55-0', '15 6918-6984', 1),
(5, 'alan torqueta', '853.25477.55-0', '12 4891-8163', 1),
(6, 'julia rowbergue', '133.22477.45-0', '14 1265-8147', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mark` varchar(100) DEFAULT NULL,
  `price` float NOT NULL,
  `category` varchar(100) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `products`
--

INSERT INTO `products` (`id`, `name`, `mark`, `price`, `category`, `supplier_id`) VALUES
(1, 'moto e7', 'motorola', 899, 'smartphone', 2),
(2, 'moto g10', 'motorola', 1499, 'smartphone', 2),
(3, 'moto g30', 'motorola', 1799, 'smartphone', 2),
(4, 'moto g60', 'motorola', 2699, 'smartphone', 2),
(5, 'moto g100', 'motorola', 3999, 'smartphone', 2),
(6, 'galaxy a12', 'samsung', 1399, 'smartphone', 1),
(7, 'galaxy a52', 'samsung', 2499, 'smartphone', 1),
(8, 'galaxy s21', 'samsung', 4999, 'smartphone', 1),
(9, 'galaxy z flip 3', 'samsung', 7999, 'smartphone', 1),
(10, 'se', 'iphone', 2999, 'smartphone', 3),
(11, 'xr', 'iphone', 4299, 'smartphone', 3),
(12, '12', 'iphone', 6999, 'smartphone', 3),
(13, '13 pro max', 'iphone', 12999, 'smartphone', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `product_moviments`
--

CREATE TABLE `product_moviments` (
  `id` int(11) NOT NULL,
  `stock_id` int(11) DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `product_moviments`
--

INSERT INTO `product_moviments` (`id`, `stock_id`, `request_id`) VALUES
(1, 1, 3),
(2, 1, 4),
(4, 1, 6),
(5, 1, 7),
(6, 1, 8),
(7, 1, 9),
(8, 1, 10),
(10, 1, 1),
(11, 1, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `costumer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `requests`
--

INSERT INTO `requests` (`id`, `costumer_id`, `product_id`, `employee_id`, `date`) VALUES
(1, 2, 3, 2, '2022-03-03'),
(2, 4, 3, 4, '2022-10-11'),
(3, 4, 7, 3, '2022-04-10'),
(4, 6, 8, 2, '2022-04-20'),
(6, 5, 8, 6, '2022-07-17'),
(7, 1, 10, 5, '2023-03-20'),
(8, 3, 10, 2, '2023-01-20'),
(9, 6, 13, 3, '2023-01-10'),
(10, 2, 1, 5, '2023-02-11');

-- --------------------------------------------------------

--
-- Estrutura para tabela `stocks`
--

CREATE TABLE `stocks` (
  `id` int(11) NOT NULL,
  `departament` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `stocks`
--

INSERT INTO `stocks` (`id`, `departament`) VALUES
(1, 'smartphone');

-- --------------------------------------------------------

--
-- Estrutura para tabela `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `cnpj` varchar(15) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `cnpj`, `phone_number`, `address`) VALUES
(1, 'samsung electronics', '15462687569874', '15 9894-1961', 'rua tarara lala'),
(2, 'motorola mobility', '32145687569874', '16 6894-1961', 'rua lala lala'),
(3, 'apple', '78695687569874', '17 1294-1321', 'rua lala tarara');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cnpj` (`cnpj`);

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
  ADD KEY `companie_id` (`companie_id`);

--
-- Índices de tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Índices de tabela `product_moviments`
--
ALTER TABLE `product_moviments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_id` (`stock_id`),
  ADD KEY `request_id` (`request_id`);

--
-- Índices de tabela `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `costumer_id` (`costumer_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Índices de tabela `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cnpj` (`cnpj`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `product_moviments`
--
ALTER TABLE `product_moviments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`companie_id`) REFERENCES `companies` (`id`);

--
-- Restrições para tabelas `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`);

--
-- Restrições para tabelas `product_moviments`
--
ALTER TABLE `product_moviments`
  ADD CONSTRAINT `product_moviments_ibfk_1` FOREIGN KEY (`stock_id`) REFERENCES `stocks` (`id`),
  ADD CONSTRAINT `product_moviments_ibfk_2` FOREIGN KEY (`request_id`) REFERENCES `requests` (`id`);

--
-- Restrições para tabelas `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `requests_ibfk_1` FOREIGN KEY (`costumer_id`) REFERENCES `costumers` (`id`),
  ADD CONSTRAINT `requests_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `requests_ibfk_3` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
