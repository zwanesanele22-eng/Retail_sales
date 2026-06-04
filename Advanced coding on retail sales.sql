-- Databricks notebook source
SELECT *
FROM brightlearn.data.retail_sales_database;

--------Which product categories generated more than 150,000 in total sales? 
     SELECT `Product Category`,
        SUM (`Total Amount`) AS total_sales
    FROM retail_sales_database
    GROUP BY `Product Category`
    HAVING total_sales> 150000;


------ Which genders generated an average transaction value above 300? 
   SELECT Gender,
         AVG(`Total Amount`) AS Avg_transact
   FROM retail_sales_database
   GROUP BY Gender
   HAVING Avg_transact >300;


3. Find the top 5 customers with the highest total spending.
  SELECT `Customer ID`,
          `Total amount`
  FROM   retail_sales_database
  ORDER BY `Total amount` DESC
  LIMIT 5;

4. Which product categories have more than 300 transactions? 


5. What is the highest sale amount recorded for each product category? 


6. Find the minimum sale amount for each gender. 


7. Show categories where the average quantity sold is greater than 2. 


8. Find the total sales for customers aged between 25 and 40 who purchased Beauty or Clothing products.


9. Which product categories have a maximum sale amount greater than 1000? 


10. Show the top 3 categories by average sales value, excluding customers under 25.
