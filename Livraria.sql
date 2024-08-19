create database Livraria;
use Livraria;

create table cliente(
id_cliente int not null auto_increment,
nome varchar(50),
endereco varchar(50),
telefone varchar(11),
email varchar (50),
CPF varchar(11),
data_nascimento date,
primary key (id_cliente)
);

create table pedido(
id_pedido int not null auto_increment,
pedidos varchar(100),
nome_cliente varchar(50),
funcionario varchar(50),
data_pedido date,
valor_pedido varchar(30),
primary key (id_pedido)
);

create table vendedores(
id_vendedor int not null auto_increment,
nome varchar(50),
data_nascimento date,
primary key (id_vendedor)
);

create table livros(
id_livro int not null auto_increment,
nome varchar (100),
ano varchar(4),
primary key (id_livro)
);

create table estoque(
id_estoque int not null auto_increment,
livro varchar(100),
quantidade_livro varchar (100),
autor varchar(100),
primary key (id_estoque)
);

create table formaDePagamento(
id_formaDePagamento int not null,
nome_cliente varchar(100),
valor varchar(50),
vendedor varchar(50),
primary key (id_formaDePagamento)
);

create table entrega(
id_entrega int not null auto_increment,
data_entrega date,
primary key (id_entrega)
);

create table PedidosLivros(
id_PedidosLivros int not null auto_increment,
primary key (id_PedidosLivros)
);

















