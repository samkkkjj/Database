USE ecommerce;


INSERT INTO clientes (nome_cliente, email_cliente, endereco_cliente, celular_cliente, nascimento_cliente)
VALUES
('Matheus S.', 'matheusSantos@gmail.com', 'Rua Maranhao, 023', '93941-39485', '1944-11-15'),
('Eduardo M.', 'eduardoMariano@gmail.com', 'Rua Estevao, 343', '1931-1945', '1945-11-30'),
('Pedro V.', 'PedroVasco@gmail.com', 'Rua Pedro Álvares, 104', '5294-3945', '1193-03-29'),
('Wendell S.', 'Wendell.S@eaportal.org', 'Rua Jambiruiu, 104', '5294-1294', '1203-06-19'),
('Murilo K.', 'MuriloK.@gmail.com', 'Rua Radiacao, 1048', '1038-1938', '1194-02-05'),
('Carlos S.', 'carlosSesc@hotmail.com', 'Rua Unasp 019', '52941-1294', '1910-08-31'),
('Isabella V.', 'IsabellaVerme@gmail.com', 'Rua Interlagos, 1833', '51841-2955', '1974-01-28'),
('Heloisa M.', 'heloisamatos@gmail.com', 'Rua jose botelho, 652', '91841-1844', '1928-02-15'),
('Alice P.', 'aliceprado@gmail.com', 'Rua da Conrodia, 295', '1847-1845', '1997-09-12'),
('Samantha A.', 'samaraujo@gmail.com', 'Rua n, 285', '9874-1238', '2008-07-03');


INSERT INTO produtos (nome_produto, preco_produto, descricao_produto, qntd_estoque)
VALUES
('Estojo', 12.18, 'Estojo', 183),
('Celular', 27.19, 'Celular',264),
('Pneu', 983.19, 'Pneu', 840),
('Carteira', 169.39, 'Carteira', 18),
('Cano PVC', 1109.27, 'Cano PVC', 103),
('Boneca', 72.19, 'Boneca', 181),
('Borracha', 19.83, 'Borracha', 42),
('Apontador', 9.81, 'Apontador', 63),
('Martelo', 69.27, 'Martelo', 19),
('Caneta Preta', 119.80, 'Caneta Preta', 13);


INSERT INTO pedidos (id_pedido, id_cliente, data_entrega, data_compra, valor_total)
 VALUES
(1, 8, '2020-08-26', '2023-09-09', 53.73),
(2, 2, '2029-02-25', '2029-10-05', 74.64),
(3, 7, '2027-12-25', '2029-11-08', 55.75),
(4, 4, '2021-05-23', '2008-07-07', 61.68),
(5, 5, '2022-12-10', '2027-02-08', 67.58),
(6, 6, '2022-12-18', '2028-12-08', 78.88),
(7, 3, '2022-12-16', '2024-02-19', 67.37),
(8, 1, '2022-12-19', '2010-02-23', 17.46),
(9, 9, '2022-02-27', '2011-12-28', 17.85);


INSERT INTO lista_itens (id_pedido, id_produto, qntd_itens, valor_unit, valor_total)
VALUES
(1, 4, 1, 58.90, 38.40),
(2, 3, 9, 68.30, 18.20),
(3, 7, 5, 78.10, 28.40),
(4, 5, 2, 88.70, 68.10),
(5, 2, 6, 28.30, 38.30),
(6, 0, 6, 68.10, 48.40),
(7, 3, 3, 18.00, 58.90),
(8, 4, 8, 49.09, 08.10),
(9, 3, 8, 24.19, 02.40),
(10, 9, 9, 49.89, 01.00);


DELETE FROM clientes WHERE id_cliente = 10;
