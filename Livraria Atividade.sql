drop database if exists Livraria;
create database Livraria;
use Livraria;

create table cliente(
id_cliente int(6) not null auto_increment,
nome varchar(50),
idade varchar(3),
cpf varchar (15),
telefone varchar(15),
email varchar (100),
data_nascimento varchar(15),
data_cadastro timestamp DEFAULT current_timestamp,
primary key (id_cliente)
);
drop table cliente;

create table vendedores(
id_vendedor int(10) not null auto_increment,
nome varchar(50),
data_nascimento date,
turno ENUM('Manhã','Tarde', 'Noite'),
primary key (id_vendedor)
);

drop table vendedores;

create table livros(
id_livro int(10) not null auto_increment,
nome varchar (100),
ano int,
editora varchar(100),
preço float,
primary key (id_livro)
);

drop table livros;

create table pedido(
id_pedido int not null auto_increment,
id_cliente int,
id_livro int,
quantidade int,
id_funcionario int,
data_pedido date,
total decimal(10,2),
primary key (id_pedido),
foreign key(id_cliente) references cliente(id_cliente),
foreign key(id_livro) references livros(id_livro),
foreign key(id_funcionario) references vendedores(id_vendedor)
);
drop table pedido;

create table formaDePagamento(
id_formaDePagamento int(10) not null,
nome_cliente varchar(100),
valor varchar(50),
vendedor varchar(50),
nota_fiscal varchar(40),
primary key (id_formaDePagamento)
);

create table entrega(
id_entrega int not null auto_increment,
data_entrega date,
Rastreio varchar(40),
primary key (id_entrega)
);

create table PedidosLivros(
id_PedidosLivros int not null auto_increment,
primary key (id_PedidosLivros)
);

INSERT INTO cliente (nome, idade, cpf, telefone, email, data_nascimento) VALUES
('Ana Souza', 29, '123.456.789-00', '(11) 98765-4321', 'ana.souza@example.com', '1995-04-15'),
('Bruno Oliveira', 34, '234.567.890-12', '(21) 97654-3210', 'bruno.oliveira@example.com', '1989-07-22'),
('Clara Lima', 27, '345.678.901-23', '(31) 96543-2109', 'clara.lima@example.com', '1997-01-10'),
('Daniel Pereira', 31, '456.789.012-34', '(41) 95432-1098', 'daniel.pereira@example.com', '1992-12-03'),
('Elisa Costa', 26, '567.890.123-45', '(51) 94321-0987', 'elisa.costa@example.com', '1997-09-28'),
('Fernando Martins', 38, '678.901.234-56', '(61) 93210-9876', 'fernando.martins@example.com', '1985-11-17'),
('Gabriela Almeida', 30, '789.012.345-67', '(71) 92109-8765', 'gabriela.almeida@example.com', '1993-06-05'),
('Hugo Santos', 33, '890.123.456-78', '(81) 91098-7654', 'hugo.santos@example.com', '1991-03-12'),
('Isabela Rodrigues', 25, '901.234.567-89', '(91) 90987-6543', 'isabela.rodrigues@example.com', '1998-08-20'),
('João Silva', 37, '012.345.678-90', '(11) 99876-5432', 'joao.silva@example.com', '1987-05-25'),
('Karina Ferreira', 32, '123.456.789-01', '(21) 98765-4320', 'karina.ferreira@example.com', '1992-07-11'),
('Lucas Teixeira', 28, '234.567.890-12', '(31) 97654-3219', 'lucas.teixeira@example.com', '1996-02-08'),
('Mariana Castro', 29, '345.678.901-23', '(41) 96543-2108', 'mariana.castro@example.com', '1995-04-30'),
('Natália Gomes', 35, '456.789.012-34', '(51) 95432-1097', 'natalia.gomes@example.com', '1988-10-22'),
('Otávio Silva', 40, '567.890.123-45', '(61) 94321-0986', 'otavio.silva@example.com', '1984-01-09'),
('Paula Oliveira', 27, '678.901.234-56', '(71) 93210-9875', 'paula.oliveira@example.com', '1997-03-14'),
('Quésia Lima', 24, '789.012.345-67', '(81) 92109-8764', 'quesia.lima@example.com', '2000-05-19'),
('Rafael Mendes', 30, '890.123.456-78', '(91) 91098-7653', 'rafael.mendes@example.com', '1993-11-27'),
('Sandra Costa', 33, '901.234.567-89', '(11) 90987-6542', 'sandra.costa@example.com', '1990-08-04'),
('Tiago Pereira', 36, '012.345.678-90', '(21) 99876-5431', 'tiago.pereira@example.com', '1987-12-13'),
('Amanda Oliveira', 28, '123.456.789-11', '(31) 98765-4320', 'amanda.oliveira@example.com', '1996-05-17'),
('Bruna Fernandes', 31, '234.567.890-22', '(41) 97654-3211', 'bruna.fernandes@example.com', '1992-08-09'),
('Carlos Silva', 39, '345.678.901-33', '(51) 96543-2101', 'carlos.silva@example.com', '1984-02-25'),
('Débora Lima', 30, '456.789.012-44', '(61) 95432-1092', 'debora.lima@example.com', '1993-04-14'),
('Eduardo Santos', 35, '567.890.123-55', '(71) 94321-0985', 'eduardo.santos@example.com', '1988-07-30'),
('Fernanda Costa', 32, '678.901.234-66', '(81) 93210-9874', 'fernanda.costa@example.com', '1991-11-16'),
('Gabriel Almeida', 29, '789.012.345-77', '(91) 92109-8763', 'gabriel.almeida@example.com', '1995-01-09'),
('Helena Rodrigues', 27, '890.123.456-88', '(11) 91098-7652', 'helena.rodrigues@example.com', '1997-10-24'),
('Igor Martins', 34, '901.234.567-99', '(21) 90987-6541', 'igor.martins@example.com', '1989-06-19'),
('Juliana Pereira', 26, '012.345.678-00', '(31) 99876-5431', 'juliana.pereira@example.com', '1997-03-14'),
('Karla Costa', 33, '123.456.789-22', '(41) 98765-4321', 'karla.costa@example.com', '1990-09-18'),
('Lucas Almeida', 25, '234.567.890-33', '(51) 97654-3210', 'lucas.almeida@example.com', '1998-02-12'),
('Marcos Lima', 29, '345.678.901-44', '(61) 96543-2109', 'marcos.lima@example.com', '1994-05-21'),
('Nathalie Silva', 32, '456.789.012-55', '(71) 95432-1098', 'nathalie.silva@example.com', '1991-07-15'),
('Otávia Souza', 28, '567.890.123-66', '(81) 94321-0987', 'otavia.souza@example.com', '1996-10-03');

INSERT INTO livros (nome, ano, editora, preço) VALUES
('1984', 1949, 'Secker & Warburg', 39.90),
('Brave New World', 1932, 'Chatto & Windus', 45.00),
('To Kill a Mockingbird', 1960, 'J.B. Lippincott & Co.', 30.00),
('The Great Gatsby', 1925, 'Scribner', 25.50),
('Moby Dick', 1851, 'Harper & Brothers', 35.00),
('Pride and Prejudice', 1813, 'T. Egerton', 28.75),
('The Catcher in the Rye', 1951, 'Little, Brown and Company', 33.00),
('The Lord of the Rings', 1954, 'George Allen & Unwin', 55.00),
('Jane Eyre', 1847, 'Smith, Elder & Co.', 31.25),
('Animal Farm', 1945, 'Secker & Warburg', 29.99),
('Wuthering Heights', 1847, 'Thomas Newby', 27.50),
('The Hobbit', 1937, 'George Allen & Unwin', 42.00),
('The Da Vinci Code', 2003, 'Doubleday', 37.00),
('The Catcher in the Rye', 1951, 'Little, Brown and Company', 30.00),
('Les Misérables', 1862, 'A. Lacroix, Verboeckhoven & Cie', 47.50),
('War and Peace', 1869, 'The Russian Messenger', 60.00),
('Don Quixote', 1605, 'Francisco de Robles', 52.00),
('The Odyssey', -800, 'Classical Greece', 40.00),
('The Iliad', -750, 'Classical Greece', 39.50),
('The Catch-22', 1961, 'Harcourt Brace Jovanovich', 34.75);

INSERT INTO vendedores (nome, data_nascimento, turno) VALUES
('João da Silva', '1985-04-12', 'Manhã'),
('Maria Oliveira', '1990-07-25', 'Tarde'),
('Carlos Santos', '1982-11-30', 'Noite'),
('Ana Pereira', '1975-03-15', 'Manhã'),
('Pedro Almeida', '1988-09-10', 'Tarde');

INSERT INTO pedido (id_cliente, id_livro, id_funcionario, quantidade, data_pedido, total) VALUES
(7, 1, 1, 2, '2024-09-01', 79.80),  
(9, 3, 2, 1, '2024-09-02', 30.00),  
(14, 5, 3, 3, '2024-09-03', 105.00), 
(20, 7, 4, 1, '2024-09-04', 55.00),
(10, 9, 5, 4, '2024-09-05', 127.00);

show tables;

select nome from cliente;

select data_cadastro from cliente;

-- selecione os cliente onde o ID é maior que 4 e menor que 10--
select*from cliente
where id_cliente >4 and id_cliente <10;

-- msotre nome e idade dos clientes onde o ID é maior que 6 e menor que 25 e organize as idade de forma crescente--
select id_cliente, nome, idade from cliente
where id_cliente >6 and id_cliente <25
order by idade asc;

select count(*) AS total_clienteSetembro from cliente
where data_cadastro >=curdate()-interval 2 month;

select count(*) as total_clienteSetembro from cliente
where data_cadastro between"2024-09-17 00:00:00" and "2024-09-17 19:22:17";

select id_cliente, senha from cliente
where senha ="123456" and id_cliente =4;

select id_livro, nome, ano, editora, preço from livros;

select id_cliente, id_livro, data_pedido, quantidade from pedido;

select * from cliente
where nome like 'ma%';

select * from cliente
where nome like '%os';

select *from cliente
where nome like 'M%' and nome like '%o'; -- funciona tambem com OUR e AND para condicionais --

select idade, count(id_cliente) from cliente
where idade between 20 and 30 
group by idade
order by idade asc;



-- comentario de linha--  /*comentario de bloco*/


