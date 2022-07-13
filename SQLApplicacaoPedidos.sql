/*CREATE DATABASE applicacao2 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
drop schema dsapplication;
create schema dsapplication;
*/


use dsapplication;

insert into modelo values(1, "DELL", "OPTIPLEX 790");
insert into modelo values(2, "DELL", "OPTIPLEX 780");
insert into modelo values(3, "SONY", "PS4 Pro");
insert into modelo values(4, "SONY", "PS4 Bundle");

insert into categoria values(1, 'INFORMÁTICA', null);
insert into categoria values(2, 'AUTOMOBILISTICO', null);
insert into categoria values(3, 'MUSICAL', null);
insert into categoria values(4, 'ELETRÔNICA', null);
insert into categoria values(5, 'SEGURANÇA', null);
insert into categoria values(6, 'BEBIDAS', null);
insert into categoria values(7, 'REFRIGERANTE', 6);
insert into categoria values(8, 'ENERGETICO', 6);
insert into categoria values(9, 'AGUA NATURAL', 6);
insert into categoria values(10, 'COMPUTADOR', 1);
insert into categoria values(11, 'NOTEBOOK', 1);

select * from categoria;

insert into grupo values(1, 'Administradores', 'Group to managers of acess');
insert into grupo values(2, 'Clientes', 'Group to customers of acess');
insert into grupo values(3, 'Others', 'Group to temporal acess');
insert into grupo values(4, 'Employees', 'Group to employees acess');

select * from grupo;

insert into usuario values(1, 'jhonnykaggye@outlook.com', 'jhonnykaggye', 'HG09F564');
insert into usuario values(2, 'maryrammos@gmail.com', 'maryrammos', 'JF7854FR');
insert into usuario values(3, 'tonystark@outlook.com', 'Stark', 'JR145825');
insert into usuario values(4, 'brucewayne@gmail.com', 'Bruce', 'JF7854FR');
select * from usuario;

insert into usuario_grupo values(4, 1);
insert into usuario_grupo values(3, 1);
insert into usuario_grupo values(2, 1);
insert into usuario_grupo values(1, 2);

insert into permissao values(1, "CADASTRAR_LANCAMENTO", "CADASTRAR_LANCAMENTO");
insert into permissao values(2, "PESQUISAR_LANCAMENTOS", "PESQUISAR_LANCAMENTOS");

insert into permissao values(3, "CADASTRAR_ACESSORIO", "CADASTRAR_ACESSORIO");
insert into permissao values(4, "PESQUISAR_ACESSORIOS", "PESQUISAR_ACESSORIOS");

insert into permissao values(5, "CADASTRAR_PEDIDO", "CADASTRAR_PEDIDO");
insert into permissao values(6, "PESQUISAR_PEDIDOS", "PESQUISAR_PEDIDOS");

insert into permissao values(7, "CADASTRAR_MODELO", "CADASTRAR_MODELO");
insert into permissao values(8, "PESQUISAR_MODELOS", "PESQUISAR_MODELOS");

insert into permissao values(9, "CADASTRAR_AUTOMOVEL", "CADASTRAR_AUTOMOVEL");
insert into permissao values(10, "PESQUISAR_AUTOMOVEIS", "PESQUISAR_AUTOMOVEIS");

insert into permissao values(11, "CADASTRAR_CLIENTE", "CADASTRAR_CLIENTE");
insert into permissao values(12, "PESQUISAR_CLIENTES", "PESQUISAR_CLIENTES");

insert into permissao values(13, "CADASTRAR_CATEGORIA", "CADASTRAR_CATEGORIA");
insert into permissao values(14, "PESQUISAR_CATEGORIAS", "PESQUISAR_CATEGORIAS");

insert into permissao values(15, "CADASTRAR_PEDIDO", "CADASTRAR_PEDIDO");
insert into permissao values(16, "PESQUISAR_PEDIDOS", "PESQUISAR_PEDIDOS");

insert into permissao values(17, "CADASTRAR_PRODUTO", "CADASTRAR_PRODUTO");
insert into permissao values(18, "PESQUISAR_PRODUTOS", "PESQUISAR_PRODUTOS");

insert into permissao values(19, "GERENCIAR_RELATORIOS", "GERENCIAR_RELATORIOS");
insert into permissao values(20, "CADASTRAR_USUARIO", "CADASTRAR_USUARIO");
insert into permissao values(21, "PESQUISAR_USUARIOS", "PESQUISAR_USUARIOS");

insert into grupo_permissao values(1, 1);
insert into grupo_permissao values(1, 2);
insert into grupo_permissao values(1, 3);
insert into grupo_permissao values(1, 4);
insert into grupo_permissao values(1, 5);
insert into grupo_permissao values(1, 6);
insert into grupo_permissao values(1, 7);
insert into grupo_permissao values(1, 8);
insert into grupo_permissao values(1, 9);
insert into grupo_permissao values(1, 10);
insert into grupo_permissao values(1, 11);
insert into grupo_permissao values(1, 12);
insert into grupo_permissao values(1, 13);
insert into grupo_permissao values(1, 14);
insert into grupo_permissao values(1, 15);
insert into grupo_permissao values(1, 16);
insert into grupo_permissao values(1, 17);
insert into grupo_permissao values(1, 18);
insert into grupo_permissao values(1, 19);
insert into grupo_permissao values(1, 20);
insert into grupo_permissao values(1, 21);

select * from grupo_permissao;
select * from usuario_grupo;
select * from permissao;


/*
insert into fabricante values(1, 'Ford');
insert into fabricante values(2, 'Chevrolet');
insert into fabricante values(3, 'BMW');
insert into fabricante values(4, 'Mazda');
insert into fabricante values(5, 'Lamborghini');
insert into fabricante values(6, 'Ferrari');
insert into fabricante values(7, 'Porsche');
insert into fabricante values(8, 'Koenigseag');

insert into modelo values(1, 'ESPORTIVO', 'i3 Concept', 3);
insert into modelo values(2, 'ESPORTIVO', 'X5 Concept', 3);
insert into modelo values(3, 'ESPORTIVO', 'Veneno', 5);
insert into modelo values(4, 'ESPORTIVO', 'Murcielago', 5);

insert into acessorio values(1, 'Arcondicionado automotivo');
insert into acessorio values(2, 'DVD Automotivo');
insert into acessorio values(3, 'Sensor Estacionamento');
insert into acessorio values(4, 'Touch Screen Panel');


insert into motorista values(1, '25696588956', '1999-02-02', 'Roberto Carlos', '11554422101', 'MASCULINO');
insert into motorista values(2, '21696588956', '1995-09-07', 'Winderson Nunes', '22554422101', 'MASCULINO');
insert into motorista values(3, '66696588956', '1989-09-09', 'Fabio Junior', '11554422333', 'MASCULINO');
*/

select * from modelo as m where m.fabricante = "SAMSUNG"; 

select * from produto as p
         join modelo as m
         on p.modelo_id = m.id
         where m.fabricante;
         
select * from funcionario;
select * from fabricante;
select * from cliente;
select * from carro;
select * from motorista;
select * from produto;
select * from modelo;
select * from categoria;
select * from acessorio;
select * from permissao;
select * from grupo_permissao;
select * from grupo;
select * from usuario_grupo;
select * from usuario;
select * from pedido;


