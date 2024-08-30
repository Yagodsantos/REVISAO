CREATE TABLE clientes (
    id_clientes INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR (50),
    data_cadastro DATE 
    );


    CREATE TABLE produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(50),
    descricao VARCHAR(200), 
    preco DECIMAL(10,2),
    estoque INT
    );
    
    CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
   id_clientes INT,
    FOREIGN KEY (id_clientes) REFERENCES clientes(id_clientes),
    data_pedido DATE,
    status VARCHAR(50)
    );

    
CREATE TABLE itens_pedidos(
    id_itens INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT, FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    id_produto INT, FOREIGN KEY (id_produto) REFERENCES produtos(id_produto),
    quantidade INT,
    preco_unitario DECIMAL (10,2)
    );

INSERT IGNORE INTO clientes (id_clientes, nome, telefone, email, data_cadastro) VALUES
( 1, 'Eduardo', '519888877', 'eoduntemjeito@lerolero.com', 2024-08-06),
(2,  'Cleiso', '512344567', 'cleiso@uiii.com',2024-08-06 ),
(3, 'Paulinho', '51896538', 'paulinho@lerolero.com', 2024-08-06),
(4, 'Rogerinho', '529847947', 'rogerinho@eusguri.com', 2024-08-07),
(5, 'Marquinhos', '51884543', 'marquinhos@gmail.com',  2024-08-07);

INSERT IGNORE INTO produtos (id_produto, nome_produto, preco, estoque, descricao) VALUES
(0001, 'espelho', 100.00, 20, 'Espelho que reflete assim como qualquer outro'),
(0002, 'mochila ben10', 80.00, 5, 'mochila do personagem ben10 da serie ben10'),
(0003, 'violao diGiorgio n18', 1200.00, 2, 'violao classico ja tocado ate por jorge ben'),
(0004, 'bloodborne ps4', 129.00, 10, 'melhor jogo ja feito'),
(0005, 'vinyl acabou chorare', 400.00, 1, 'disco classico por novos baianos');

INSERT IGNORE INTO pedidos (id_clientes, id_pedido, data_pedido, status) VALUES
(1, 0003, 2024-08-11, 'Enviado'),
(1, 0004, 2024-08-11, 'Enviado'),
(3, 0001, 2024-08-12, 'Enviado'),
(1, 0001, 2024-08-13, 'Pedido em revisão');

INSERT IGNORE INTO itens_pedidos(id_itens, id_pedido, id_produto, preco_unitario, quantidade)
(11, 3, 5, 400.00, 1),
(22, 4, 5, 400.00, 1),
(33, 2, 2, 80.00, 2 ),
(44, 5, 1, 100.00, 1);