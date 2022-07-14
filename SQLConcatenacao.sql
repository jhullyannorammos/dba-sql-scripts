

use webapplication;

CREATE TABLE teste_nulos (
id smallint PRIMARY KEY auto_increment,
item varchar(20),
quantidade smallint NULL);

INSERT INTO teste_nulos (id, item, quantidade) VALUES (1, 'Pendrive', 5);
INSERT INTO teste_nulos (id, item, quantidade) VALUES (2, 'Monitor', 7);
INSERT INTO teste_nulos (id, item, quantidade) VALUES (3, 'Teclado', NULL);

SELECT * FROM teste_nulos;

SELECT CONCAT("Fábio ", "dos Reis") AS "Meu Nome";
#SELECT CONCAT(Nome_autor, " ", Sobrenome_autor) AS "Nome Completo" FROM tbl_autores;
#SELECT CONCAT('Eu gosto do livro ', Nome_Livro) FROM tbl_Livro WHERE ID_autor = 2;