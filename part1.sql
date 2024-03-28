CREATE DATABASE ecommerce;
use ecommerce;

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_cliente VARCHAR(100) NOT NULL,
    email_cliente VARCHAR(100) UNIQUE NOT NULL,
    endereco_cliente VARCHAR(200) NOT NULL,
    celular_cliente VARCHAR(20) NOT NULL,
    nascimento_cliente DATE NOT NULL
);

CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    preco_produto DECIMAL(6, 2) NOT NULL,
    descricao_produto VARCHAR(100) NOT NULL,
    qntd_estoque INT NOT NULL
);

CREATE TABLE pedidos (
    id_pedido INT AUTO_INCREMENT ,
    id_cliente INT auto_increment,
    data_entrega DATE NOT NULL,
    data_compra DATE NOT NULL,
    valor_total DECIMAL(6, 2) NOT NULL,
    PRIMARY KEY(id_pedido),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

CREATE TABLE lista_itens (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_produto INT,
    quantidade INT NOT NULL,
    id_pedido INT auto_increment,
    valor_unitario DECIMAL(6, 2) NOT NULL,
    valor_t DECIMAL(6, 2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);