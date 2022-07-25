# Identifier le bureau (Office) qui accueille  le plus d’employés

USE classicmodels;
select count(*)as Total ,officeCode,lastName,firstName,city
from employees
INNER JOIN offices USING (officeCode)    
group by officeCode
having Total>1
ORDER BY Total DESC

# Chiffre daffaire

use classicmodels;
SELECT year(paymentDate) as Year, sum(amount) as gain
FROM payments
GROUP BY year(paymentDate)
ORDER BY Year;

# Produit le plus vendu 
SELECT * FROM classicmodels.products;
SELECT products.productCode, products.productName, count(products.productCode) as sumProduct FROM products
join orderdetails on products.productCode = orderdetails.productCode
GROUP BY products.productCode
ORDER BY count(products.productCode) DESC;
