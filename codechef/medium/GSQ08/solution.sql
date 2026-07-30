/* Write a query to add a column 'Designation' to the table and set 'Null' as the default value. Output the entire table.*/

ALTER TABLE employee 
ADD COLUMN Designation Text DEFAULT Null;

select * from employee