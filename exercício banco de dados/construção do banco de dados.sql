construção do banco de dados

1. Com base no seu MER da biblioteca, construa o código de criação do seu banco de dados e das tabelas:

CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `library`;

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `titule` varchar(100) NOT NULL,
  `page` float NOT NULL,
  `realese_date` year(4) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `library_id` int(11) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `costumers` (
  `id` int(11) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pis` varchar(15) NOT NULL,
  `office` varchar(50) NOT NULL,
  `departament` varchar(50) NOT NULL,
  `library_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `libraries` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `publishers` (
  `id` int(11) NOT NULL,
  `name` varchar(155) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone_number` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `rentals` (
  `id` int(11) NOT NULL,
  `rental` date NOT NULL,
  `delivery` date NOT NULL,
  `costumer_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


2. Com base no seu MER do sistema de estoque, construa o código de criação do seu banco de dados e das tabelas:

CREATE DATABASE IF NOT EXISTS `inventory` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `inventory`;

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cnpj` varchar(15) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `costumers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `pis` varchar(15) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `companie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mark` varchar(100) DEFAULT NULL,
  `price` float NOT NULL,
  `category` varchar(100) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `product_moviments` (
  `id` int(11) NOT NULL,
  `stock_id` int(11) DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `costumer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `stocks` (
  `id` int(11) NOT NULL,
  `departament` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `cnpj` varchar(15) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
