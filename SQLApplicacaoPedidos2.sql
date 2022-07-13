create schema dsapplication;
use dsapplication;
select * from usuario;

insert into grupo values(1, 'Administradores', 'Group to managers of acess');
insert into grupo values(2, 'Clientes', 'Group to clients of acess');
insert into grupo values(3, 'Others', 'Group to temporal acess');

insert into usuario values(1, 'jhonnykaggye@outlook.com', 'jhonnykaggye', 'HG09F564');
select * from usuario;

insert into usuario_grupo values(4, 1);
insert into usuario_grupo values(3, 1);
insert into usuario_grupo values(2, 1);
insert into usuario_grupo values(1, 2);


SELECT * FROM PERMISSAO;
insert into permissao values(1, "CADASTRAR_CATEGORIAS", "CADASTRAR_CATEGORIAS");
insert into permissao values(2, "CONSULTAR_CATEGORIAS", "CONSULTAR_CATEGORIAS");

insert into permissao values(3, "CADASTRAR_PERMISSAO", "CADASTRAR_PERMISSAO");
insert into permissao values(4, "CONSULTAR_PERMISSAO", "CONSULTAR_PERMISSAO");
insert into permissao values(5, "CADASTRAR_GRUPOS", "CADASTRAR_GRUPOS");
insert into permissao values(6, "CONSULTAR_GRUPOS", "CONSULTAR_GRUPOS");
insert into permissao values(7, "CADASTRAR_USUARIOS", "CADASTRAR_USUARIOS");
insert into permissao values(8, "CONSULTAR_USUARIOS", "CONSULTAR_USUARIOS");

insert into permissao values(9, "VISUALIZAR_RELATORIOS", "VISUALIZAR_RELATORIOS");
insert into permissao values(10, "CADASTRAR_CLIENTES", "CADASTRAR_CLIENTES");
insert into permissao values(11, "CONSULTAR_CLIENTES", "CONSULTAR_CLIENTES");
insert into permissao values(12, "CADASTRAR_PEDIDOS", "CADASTRAR_PEDIDOS");
insert into permissao values(13, "CONSULTAR_PEDIDOS", "CONSULTAR_PEDIDOS");
insert into permissao values(14, "CADASTRAR_PEDIDOS", "CADASTRAR_PRODUTOS");
insert into permissao values(15, "CONSULTAR_PEDIDOS", "CONSULTAR_PRODUTOS");

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

select * from categoria;
insert into categoria values(1, 'INFORMÁTICA', NULL);
insert into categoria values(2, 'AUTOMOBILISTICO', NULL);
insert into categoria values(3, 'MUSICAL', NULL);
insert into categoria values(4, 'ELETRÔNICA', NULL);
insert into categoria values(5, 'SEGURANÇA', NULL);
insert into categoria values(6, 'BEBEDA', NULL);
insert into categoria values(7, 'CERVEJA', 6);
insert into categoria values(8, 'REFRIGERANTE', 6);
insert into categoria values(9, 'ÁGUA MINERAL A GÁS', 6);
insert into categoria values(10, 'REFRIGERANTE ENERGETICO', 6);
insert into categoria values(11, 'NOTEBOOKS', 1);
insert into categoria values(12, 'DESKTOP', 1);
insert into categoria values(13, 'PNEU', 2);
insert into categoria values(14, 'LUVAS', 2);
insert into categoria values(15, 'CAPACETE', 2);
insert into categoria values(16, 'GUITARRA ELETRICA LES PAUL', 3);
insert into categoria values(17, 'DDJ400', 3);
insert into categoria values(18, 'FERRO DE SOLDA', 4);
insert into categoria values(19, 'CAMERA IP', 5);
insert into categoria values(20, 'FECHADURA BIOMETRICA', 5);

SELECT * FROM PEDIDO;