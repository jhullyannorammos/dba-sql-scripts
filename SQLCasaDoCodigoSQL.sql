create database gscom;
show databases;
drop database gscom;
use gscom;

create table gscom.comivenda(
      n_numeivenda int not null auto_increment,
      n_numevenda int not null,
      n_numeprodu int not null,
      n_valoivenda float(10,2),
      n_qtdeivenda int,
      n_descivenda float(10, 2),
      primary key(n_numeivenda)
);
/* ----------------------------------------------------------------- */
create table gscom.comvendas(
n_numevenda int not null auto_increment,
c_codivenda varchar(10),
n_numeclien int not null,
n_numeforne int not null,
n_numevende int not null,
n_valovenda float(10,2),
n_descvenda float(10,2),
n_totavenda float(10,2),
d_datavenda date,
primary key(n_numevenda));
/* ----------------------------------------------------------------- */
create table gscom.comforne(
	n_numeforne int not null auto_increment,
    c_codiforne varchar(10),
    c_nomeforne varchar(100),
    c_razaforne varchar(100),
    c_foneforne varchar(20),
    primary key(n_numeforne)
);
/* ----------------------------------------------------------------- */
create table gscom.comvenda(
n_numevenda int not null auto_increment,
c_codivenda varchar(10),
n_numeclien int not null,
n_numeforne int not null,
n_numevende int not null,
n_valovenda float(10,2),
n_descvenda float(10,2),
n_totavenda float(10,2),
d_datavenda date,
primary key(n_numevenda));
/* ----------------------------------------------------------------- */
create table gscom.comvende(
      n_numevende int not null auto_increment,
      c_codivende varchar(10),
      c_nomevende varchar(100),
      c_razavende varchar(100),
      c_fonevende varchar(20),
      n_porcvende float(10,2),
primary key(n_numevende));
/* ----------------------------------------------------------------- */
create table gscom.comprodu(
n_numeprodu int not null auto_increment,
c_codiprodu varchar(20),
c_descprodu varchar(100),
n_valoprodu float(10,2),
c_situprodu varchar(1),
n_numeforne int,
primary key(n_numeprodu));
/* ----------------------------------------------------------------- */
create table gscom.comclien(
n_numeclien int not null auto_increment,
c_codiclien varchar(10),
c_nomeclien varchar(100),
c_razaclien varchar(100),
d_dataclien date,
c_cnpjclien varchar(20),
c_foneclien varchar(20),
primary key (n_numeclien));

ALTER TABLE gscom.comclien AUTO_INCREMENT=100;
alter table comclien add column c_cidaclien varchar(50);
alter table comclien drop column c_estclien;

alter table gscom.comvenda add constraint fk_comprodu_comforne
foreign key(n_numeforne)
references comforne(n_numeforne)
on delete no action
on update no action;
/* ----------------------------------------------------------------- */
alter table gscom.comvenda add constraint fk_comprodu_comvende
foreign key(n_numevende)
references comvende(n_numevende)
on delete no action
on update no action;
/* ----------------------------------------------------------------- */
alter table comvenda add constraint fk_comprodu_comvende
foreign key(n_numevende)
references comvende(n_numevende)
on delete no action
on update no action;
/* ----------------------------------------------------------------- */
alter table comvenda add constraint fk_comvenda_comclien
foreign key(n_numeclien)
references comclien(n_numeclien)
on delete no action
on update no action;
/* ----------------------------------------------------------------- */
alter table comivenda add constraint fk_comivenda_comprodu
foreign key(n_numeprodu)
references comprodu (n_numeprodu)
on delete no action
on update no action;
/* ----------------------------------------------------------------- */
alter table comvenda add constraint fk_comvenda_comclien
foreign key(n_numeclien)
references comclien(n_numeclien)
on delete no action
on update no action;
/* ----------------------------------------------------------------- */
alter table comivenda add constraint fk_comivenda_comvenda
foreign key(n_numevenda)
references comvenda (n_numevenda)
on delete no action
on update no action;
/* ----------------------------------------------------------------- */
alter table comivenda drop foreign key fk_comivenda_comprodu;
/* criando usuario */
create user supporte@'%' identified by 'sprt123';
/* garantido acesso de usuario */
grant all privileges on *.* to supporte@'%' with grant option;
/* 
privil??gios globais aplicam-se para todos os bancos de
dados em um determinado servidor. S??o concedidos e revogados por
meio dos comandos a seguir, que conceder??o e revogar??o apenas pri-
vil??gios globais, respectivamente: 
*/
grant all on *.* to supporte@localhost;
revoke all on *.* ;
/*
privil??gios de bancos de dados aplicam-se
a todas as tabelas em um determinado banco de dados. Os comando
para conceder e revogar apenas privil??gios de banco de dados ser??o:
*/
grant all to application.* to supporte@localhost;
revoke all on application.*;
/*
privil??gios de tabelas aplicam-se a todas as colunas
em uma determinada tabela. S??o concedidos ou revogados utilizando
os comandos:
*/
grant all on application.clientes;
revoke all on application.clientes;
/*
privil??gios de colunas aplicam-se a uma ??nica co-
luna em uma determinada tabela. Podem ser utilizados para os coman-
dos de sele????o, inser????o e atualiza????o de determinadas colunas que de-
sejar. S??o concedidos utilizando os comandos:
*/
grant select(cpf),  insert(cpf), update(cpf) on application.pessoas to supporte@localhost identified by senha;
/* revogando acesso de usuario */
revoke all on *.* from supporte@'%';

/*
N??vel stored routine: a rotina de alterar, criar rotina, executar e pri-
vil??gios de concess??o de op????o aplica-se a stored procedures (procedi-
mentos e fun????es). Eles podem ser concedidos aos n??veis globais e de
banco de dados. Tamb??m podem ser usados no n??vel de rotina para ro-
tinas individuais, exceto para criar uma. Se voc?? n??o sabe o que ?? uma
store procedure, n??o se preocupe. No cap??tulo 6, voc?? ver?? v??rias expli-
ca????es sobre o assunto. Esses privil??gios s??o concedidos ou revogados
utilizando os comandos:
*/
grant routine on application.* to supporte@localhost;
grant execute on procedure application.nomeprocedure to supporte@localhost;

/*
N??vel proxy user: o privil??gio de proxy permite que um usu??rio seja
proxy de outro. O usu??rio externo de um outro host assume os privi-
l??gios de um usu??rio. Utilizando os comandos:
*/ 
grant PROXY on supporte@localhost to 'userexterno'@'userinterno';

/*
create table cliente(
	n_numeclient int not null auto_increment,
    c_codiclient varchar(20),
    c_cpfclient varchar(14),
    d_dataclient date,
    primary key (n_numeclient)
);
alter table cliente add column c_fornec int;
alter table gscom.cliente add column c_cidade_clien varchar(50);
alter table gscom.cliente add column e_estado_clien varchar(50); 
alter table gscom.cliente modify column c_estado_clien int;
alter table gscom.cliente drop column e_estado_clien;

desc gscom.cliente;
alter table gscom.cliente auto_increment=100;

create table fornecedor(
    c_codigo int not null auto_increment,
    n_fornec varchar(10),
    r_razao varchar(14),
    primary key (c_codigo)
);

*/


/* Fazendo testes com os constraints*/
CREATE TABLE Pai (
 ID_Pai SMALLINT PRIMARY KEY,
 Nome_Pai VARCHAR(50)
);

CREATE TABLE Filho (
 ID_Filho SMALLINT AUTO_INCREMENT PRIMARY KEY,
 Nome_Filho VARCHAR(50),
 ID_Pai SMALLINT,
 CONSTRAINT fk_id_pai FOREIGN KEY (ID_Pai)
 REFERENCES Pai(ID_Pai)
 ON DELETE CASCADE
 ON UPDATE CASCADE
);

INSERT INTO Pai VALUES (1,'Jo??o'), (2,'M??rio'), (3,'Renato'), (4,'Emerson'), (5,'Andr??');
INSERT INTO Filho (Nome_Filho, ID_Pai) VALUES ('Jo??o',1), ('M??rio',1), ('Renato',3), ('Emerson',4), ('Andr??',3);

SELECT P.ID_Pai, P.Nome_Pai, F.ID_Filho, F.Nome_Filho
FROM Filho F
INNER JOIN Pai P
ON F.ID_Pai = P.ID_Pai;

DELETE FROM Filho
WHERE Nome_Filho = 'Renato';

SELECT Nome_Pai, Nome_Filho
FROM Filho
INNER JOIN Pai
ON Filho.ID_Pai = Pai.ID_Pai;

DELETE FROM Pai
WHERE Nome_Pai = 'Renato';

SELECT Nome_Pai, Nome_Filho
FROM Filho
INNER JOIN Pai
ON Filho.ID_Pai = Pai.ID_Pai;