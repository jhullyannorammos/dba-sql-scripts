use webapplication;

CREATE TABLE employees_audit(
    id INT AUTO_INCREMENT PRIMARY KEY,
    employeeNumber INT NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    changedat DATETIME DEFAULT NULL,
    action VARCHAR(50) DEFAULT NULL
);

CREATE TABLE Produto (
idProduto INT NOT NULL AUTO_INCREMENT,
Nome_Produto VARCHAR(45) NULL,
Preco_Normal DECIMAL(10,2) NULL,
Preco_Desconto DECIMAL(10,2) NULL,
PRIMARY KEY (idProduto));

INSERT INTO employees_audit values(2, 325, "pernalonga@wb.com.br", sysdate(), "update");
INSERT INTO employees_audit values(1, 324, "patolino@wb.com.br", sysdate(), "insert");

CREATE TRIGGER tr_desconto BEFORE INSERT ON Produto
FOR EACH ROW SET NEW.Preco_Desconto = (NEW.Preco_Normal * 0.90);

INSERT INTO Produto (Nome_Produto, Preco_Normal)
VALUES ("DVD", 1.00), ("Pendrive", 18.00);

SELECT * FROM Produto;

#CREATE TRIGGER before_employee_update BEFORE UPDATE ON employees FOR EACH ROW INSERT INTO employees_audit SET action = 'update', employeeNumber = OLD.employeeNumber, lastname = OLD.lastname, changedat = NOW();
SHOW TRIGGERS;