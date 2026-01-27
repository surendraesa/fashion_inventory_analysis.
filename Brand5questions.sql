select * from  brand limit 20 ;
1.Top 5 brands 

SELECT BrandName, COUNT(*) as Total_Products
FROM brand
GROUP BY BrandName
ORDER BY Total_products DESC
LIMIT 5;

2.Average MRP

SELECT Brandname, AVG(MRP) AS Total_Products
FROM brand
GROUP BY Brandname
ORDER BY AVG(MRP) DESC;

3.Average Discount by Category

SELECT [Discount Category], AVG((MRP - [sell price]) / MRP * 100 ) AS AVG_Discount_percent
From Brand
Group By [Discount category];

4.key word analysis

SELECT Brandname,Details,[sell price]
From Brand
Where Details Like '%Cotton%';

5.popular size distribution

Select sizes, count(*) as size_Frequency
From Brand
Group by sizes
Order by size_Frequency Desc;
    

