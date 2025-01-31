-- creamos la base de datos 
/*
insertamos los datos dando click derecho en tabla y dando click en table data import en mysql
workbench
*/
CREATE DATABASE supermarket;
USE supermarket;
-- nos aseguramos de que todos los datos se allan insertado
SELECT * FROM supermarket_sales;

SELECT COUNT(*) FROM supermarket_sales;

DESCRIBE supermarket_sales;

-- cambiare el nobre de la tabla

RENAME TABLE supermarket_sales TO Invoices;

DESCRIBE invoices;
-- voy a cambiar los tipos de datos
SELECT * FROM invoices;
ALTER TABLE invoices RENAME COLUMN `Invoice ID` TO Invoice_ID;
ALTER TABLE invoices RENAME COLUMN `Customer type` to Customer_type;
ALTER TABLE invoices RENAME COLUMN `Product line` to Product_line;
ALTER TABLE invoices RENAME COLUMN `Unit price` to Unit_price;
ALTER TABLE invoices RENAME COLUMN `Tax 5%` to Tax_5;
ALTER TABLE invoices RENAME COLUMN `gross margin percentage` to gross_margin_percentage;
ALTER TABLE invoices RENAME COLUMN `gross income` to gross_income;
-- tube que modificar algunos nombre ya que contienen espacio y a la hora de realisar consuta podia dar comflicto

SELECT * FROM invoices;

-- AHORA SI VOY A CAMBIAR EL TIPO DE DATOS

ALTER TABLE invoices MODIFY Invoice_ID VARCHAR(20) PRIMARY KEY;
ALTER TABLE invoices MODIFY Branch VARCHAR(10);
ALTER TABLE invoices MODIFY City VARCHAR(50);
ALTER TABLE invoices MODIFY Customer_type VARCHAR(50);
ALTER TABLE invoices MODIFY Gender VARCHAR(50);
ALTER TABLE invoices MODIFY Product_line VARCHAR(250);
ALTER TABLE invoices MODIFY Unit_price DECIMAL(9,2);
ALTER TABLE invoices MODIFY Quantity INT;
ALTER TABLE invoices MODIFY Tax_5 DECIMAL(9,2);
ALTER TABLE invoices MODIFY Total DECIMAL(9,4);
ALTER TABLE invoices RENAME COLUMN Dates TO date;
ALTER TABLE invoices MODIFY date varchar(250);

-- AHORA TENGO QUE INVESTIGAR SI HAY DUPLICADO EN LA COLUMNA INVOICE_ID QUE ES EL IDENTIFICADOR UNICO

SELECT invoice_id, COUNT(*)
FROM invoices
GROUP BY invoice_id
HAVING COUNT(*) > 1;

-- NO HAY DUPLICADO AHORA TEBGO QUE DIVIDIR LAS COLUMNA EN VARIA PARA EVITAR REDUNDANCIA

CREATE TABLE Customers 
AS SELECT DISTINCT Customer_type, Gender 
FROM invoices;

ALTER TABLE customers ADD COLUMN Customer_id INT AUTO_INCREMENT PRIMARY KEY;
 
SELECT * FROM customers;

ALTER TABLE invoices ADD COLUMN Customer_id INT;

UPDATE invoices i
INNER JOIN customers c 
ON i.Customer_type = c.Customer_type
AND i.Gender = c.Gender
SET i.Customer_id = c.Customer_id;

SET SQL_SAFE_UPDATES = 0;

ALTER TABLE invoices 
ADD CONSTRAINT fk_Customer_id
FOREIGN KEY (Customer_id)
REFERENCES customers (Customer_id);

CREATE TABLE Products 
AS SELECT DISTINCT Product_line, Unit_price
FROM invoices;

ALTER TABLE products ADD COLUMN product_id INT AUTO_INCREMENT PRIMARY KEY;

SELECT * FROM products;

ALTER TABLE invoices ADD COLUMN product_id INT;

UPDATE invoices i 
INNER JOIN products P 
ON I.Product_line = P.Product_line
AND I.Unit_price = P.Unit_price
SET i.product_id = p.product_id;

ALTER TABLE invoices 
ADD CONSTRAINT fk_product_id
FOREIGN KEY (product_id)
REFERENCES products (product_id);


CREATE TABLE Sales AS SELECT DISTINCT Quantity, Tax_5, Total, Gross_margin_percentage 
FROM invoices;

select * from sales;
ALTER TABLE sales ADD COLUMN sale_id INT AUTO_INCREMENT PRIMARY KEY;

ALTER TABLE invoices ADD COLUMN sale_id INT;

UPDATE invoices i 
INNER JOIN sales s 
ON i.Quantity = s.Quantity
AND i.Tax_5 = s.Tax_5
AND i.Total = s.Total
AND i.Gross_margin_percentage  = s.Gross_margin_percentage 
SET i.sale_id = s.sale_id;

ALTER TABLE invoices
ADD CONSTRAINT fk_sale_id
FOREIGN KEY (sale_id)
REFERENCES sales (sale_id);

-- ahora hay que eliminar las columna que agregaos a las otras tabla de la tabla invoices

ALTER TABLE invoices 
DROP COLUMN Customer_type,
DROP COLUMN Gender;

ALTER TABLE invoices 
DROP COLUMN Product_line,
DROP COLUMN Unit_price;

ALTER TABLE invoices 
DROP COLUMN Quantity,
DROP COLUMN Tax_5,
DROP COLUMN Total,
DROP COLUMN Gross_margin_percentage;

-- nos aseguramos de que este todo bien 

SELECT * FROM invoices;
SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM sales;

SET SQL_SAFE_UPDATES = 1;

-- estos datos estan listo para realizar un analisis









 
