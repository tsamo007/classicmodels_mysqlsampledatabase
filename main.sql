* Identifier le bureau (Office) qui accueille  le plus d’employés
USE classicmodels;
select count(*)as Total ,officeCode,lastName,firstName,city
from employees
INNER JOIN offices USING (officeCode)    
group by officeCode
having Total>1
ORDER BY Total DESC
