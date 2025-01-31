USE supermarket;
describe customers;
describe invoices;
describe products;
describe sales;

-- ingreso total generado

select sum(quantity * unit_price) as cantidad 
from invoices i 
inner join products p 
on i.product_id = p.product_id
inner join sales s 
on i.sale_id = s.sale_id;

-- Qué método de pago es el más utilizado por los clientes

select Payment, count(quantity) as cantidad
from invoices i
inner join sales s
on i.sale_id = s.sale_id
group by payment
order by cantidad desc;

-- Cómo varía el ingreso entre las diferentes sucursales y ciudades

select branch, city , sum(quantity * unit_price) as ingresos 
from invoices i 
inner join products p 
on i.product_id = p.product_id
inner join sales s 
on i.sale_id = s.sale_id
group by branch, city
order by ingresos desc;

-- Qué líneas de productos generan más ingresos

select product_line, sum(quantity * unit_price) as ingresos 
from invoices i 
inner join products p 
on i.product_id = p.product_id
inner join sales s 
on i.sale_id = s.sale_id
group by product_line 
order by ingresos desc;

-- ¿Qué relación hay entre el precio unitario y las calificaciones (rating) de los clientes?

select city, rating, unit_price 
from invoices i 
inner join products p
on i.product_id = p.product_id
order by rating desc;

-- ¿Qué tipo de cliente  compra más y cuánto gastan en promedio?

select Customer_type, sum(quantity) as total, round(avg(quantity * unit_price), 3) as ingresos
from invoices i 
inner join customers c 
on i.customer_id = c.customer_id
inner join sales s
on i.sale_id = s.sale_id
inner join products p
on i.product_id = p.product_id
group by customer_type
order by ingresos desc;

-- diferencias en los patrones de compra según el género

select gender, sum(quantity) as total, sum(quantity * unit_price) as ingresos
from invoices i 
inner join customers c 
on i.customer_id = c.customer_id
inner join sales s
on i.sale_id = s.sale_id
inner join products p
on i.product_id = p.product_id
group by gender
order by ingresos desc;

-- calificación promedio de satisfacción del cliente (Rating)

select customer_type, round(avg(rating), 2) as avg_rating
from invoices i 
inner join customers c 
on i.customer_id = c.customer_id
group by customer_type;


select gender, Customer_type, sum(quantity) as total, round(avg(quantity * unit_price), 3) as ingresos
from invoices i 
inner join customers c 
on i.customer_id = c.customer_id
inner join sales s
on i.sale_id = s.sale_id
inner join products p
on i.product_id = p.product_id
group by customer_type, gender
order by ingresos desc;






