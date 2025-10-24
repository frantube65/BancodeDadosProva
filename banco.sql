CREATE DATABASE lojapascotto;
USE lojapascotto;

CREATE TABLE produtos(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(15) NOT NULL,
preço DECIMAL(10,2) NOT NULL,
quantidade INT,
id_fornecedor INT,
id_categoria INT,
CONSTRAINT fk_categoria_categorias FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

CREATE TABLE fornecedores(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(15) NOT NULL,
cnpj INT NOT NULL,
telefone INT,
cpf INT,
id_fornecedor INT
);

CREATE TABLE colaborador(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(15) NOT NULL,
cargo VARCHAR(20) NOT NULL,
salario INT,
id_colaborador INT
);

CREATE TABLE pedidos(
id INT AUTO_INCREMENT PRIMARY KEY,
data DATE,
id_funcionario INT,
id_produto INT,
quantidade INT
);

ALTER TABLE fornecedores add email VARCHAR(15);

CREATE TABLE categorias(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(20),
id_categoria INT
);

INSERT INTO
produtos (nome,id_produto,preco,quantidade,id_fornecedor)
VALUES ('MARLUCE', '1', '50', '4','1'),
		('MARLENE', '2', '60', '5','2'),
        ('MARLU', '3', '70', '6','3');

INSERT INTO
fornecedores (nome,cnpj,telefone,id_fornecedor)
VALUES ('ELOISA', '12345678', '11912343422', '1'),
		('LENE', '910111212', '21934567898', '2'),
        ('MALIA', '455688766', '21956784312', '3');
        
INSERT INTO
colaborador (nome,cargo,salario,id_colaborador)
VALUES ('BETO', 'aux.producao', '1800', '1'),
		('VANDERLEY', 'aux.limpeza','1900', '2'),
        ('OTAVIO', 'aux.operacoes','2000', '3');

INSERT INTO
pedidos (id_funcionario,id_produto,data,id_pedido,quantidade)
VALUES ('1', '1', '12/10/25','1', '20'),
		('2', '2', '13/10/25','2','10'),
        ('3', '3', '14/10/25','3', '8');
      

      
      





