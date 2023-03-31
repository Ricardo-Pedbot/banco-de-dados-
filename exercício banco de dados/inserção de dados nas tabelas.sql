1) Construa o código de inserção de dados em todas as tabelas do banco da biblioteca.

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'j.r.r. tolkein'),
(2, 'c.s. lewis'),
(3, 'rick riordan'),
(4, 'lewis carroll'),
(5, 'stephen king');

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

INSERT INTO `costumers` (`id`, `cpf`, `name`, `phone_number`, `address`) VALUES
(1, '489.983.983-76', 'rodrigo pereira', '88 99567-4356', 'rua fipisa morais'),
(2, '982.183.932-76', 'rachel frias', '23 6709-3246', 'rua gosmar travel'),
(3, '234.645.756-67', 'gabriela palmas', '24 6576-8649', 'av paes leme'),
(4, '456.634.543-64', 'heitor aparecido', '87 9843-2432', 'rua marechal ubatuba'),
(5, '456.532.123-64', 'rogerio paz', '17 5436-2432', 'rua paraiso imperial'),
(6, '485-569-951-58', 'ricardo alexandre', '89 6952-9659', 'rua indio barueri');

INSERT INTO `employees` (`id`, `name`, `pis`, `office`, `departament`, `library_id`) VALUES
(1, 'yago martins', '383.32145.32-3', 'empilhador', 'estoque', NULL),
(2, 'lucas ferneda', '453.65457.35-7', 'empilhador', 'estoque', NULL),
(3, 'roberto augusto', '653.65457.35-8', 'empilhador', 'estoque', NULL),
(4, 'roberto augusto', '753.55477.55-0', 'empilhador', 'estoque', NULL),
(5, 'alan torqueta', '853.25477.55-0', 'gerente', 'estoque', NULL),
(6, 'julia rowbergue', '133.22477.45-0', 'gerente', 'estoque', NULL);

INSERT INTO `libraries` (`id`, `name`) VALUES
(1, 'majestbooks');

INSERT INTO `publishers` (`id`, `name`, `address`, `phone_number`) VALUES
(1, 'houghton mifflin harcourt', 'rua seilaqualé', '24 4325-5465'),
(2, 'harpercollins publishers', 'rua quaqluercoisa', '12 2131-3123'),
(3, 'the folio society', 'av fim de mundo', '65 1234-6433'),
(4, 'suma de letras', 'rua aqui é brasil', '69 2344-5234');

INSERT INTO `rentals` (`id`, `rental`, `delivery`, `costumer_id`, `book_id`, `employee_id`) VALUES
(1, '2023-02-02', '2023-03-10', 6, 7, 6),
(2, '2023-02-04', '2023-02-24', 3, 1, 5),
(3, '2023-03-02', '2023-03-24', 2, 2, 5),
(4, '2023-01-02', '2023-02-20', 4, 5, 5);

2) Construa o código de inserção de dados em todas as tabelas do estoque

INSERT INTO `companies` (`id`, `name`, `cnpj`, `phone_number`) VALUES
(1, 'belanorts', '12234234234334', '14 8984-4895');

INSERT INTO `costumers` (`id`, `name`, `cpf`, `phone_number`, `address`) VALUES
(1, 'rodrigo pereira', '489.983.983-76', '88 99567-4356', 'rua fipisa morais'),
(2, 'rachel frias', '982.183.932-76', '23 6709-3246', 'rua gosmar travel'),
(3, 'gabriela palmas', '234.645.756-67', '24 6576-8649', 'av paes leme'),
(4, 'heitor aparecido', '456.634.543-64', '87 9843-2432', 'rua marechal ubatuba'),
(5, 'rogerio paz', '456.532.123-64', '17 5436-2432', 'rua paraiso imperial'),
(6, 'ricardo alexandre', '485-569-951-58', '89 6952-9659', 'rua indio barueri');

INSERT INTO `employees` (`id`, `name`, `pis`, `phone_number`, `companie_id`) VALUES
(1, 'yago martins', '383.32145.32-3', '14 8748-9846', 1),
(2, 'lucas ferneda', '453.65457.35-7', '15 9849-4984', 1),
(3, 'roberto augusto', '653.65457.35-8', '14 8974-9159', 1),
(4, 'roberto augusto', '753.55477.55-0', '15 6918-6984', 1),
(5, 'alan torqueta', '853.25477.55-0', '12 4891-8163', 1),
(6, 'julia rowbergue', '133.22477.45-0', '14 1265-8147', 1);

INSERT INTO `suppliers` (`id`, `name`, `cnpj`, `phone_number`, `address`) VALUES
(1, 'samsung electronics', '15462687569874', '15 9894-1961', 'rua tarara lala'),
(2, 'motorola mobility', '32145687569874', '16 6894-1961', 'rua lala lala'),
(3, 'apple', '78695687569874', '17 1294-1321', 'rua lala tarara');


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

INSERT INTO `requests` (`id`, `costumer_id`, `product_id`, `employee_id`) VALUES
(1, 2, 3, 2),
(2, 4, 3, 4),
(3, 4, 7, 3),
(4, 6, 8, 2),
(6, 5, 8, 6),
(7, 1, 10, 5),
(8, 3, 10, 2),
(9, 6, 13, 3),
(10, 2, 1, 5);

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

INSERT INTO `stocks` (`id`, `departament`) VALUES
(1, 'smartphone');
