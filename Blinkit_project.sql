
create database blinkit_project;

use blinkit_project;

show tables;


#Q1 Import Data from table Grocery Sales using the provided CSV File.

show tables;

select * from grocery;


#Q2. write an sql query to show all item identifier.

select item_identifier from grocery;


#Q3 Write an SQL query to show count of total Item_Identifier.

select count(item_identifier) from grocery;


#Q4 Write an SQL query to show maximum Item Weight.

select max(item_weight) from grocery;


#Q5 Write an SQL query to show minimum Item Weight.

select min(item_weight) from grocery;


#Q6 Write an SQL query to show average Item_Weight.

select avg(item_weight) from grocery;


#Q7 Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Low Fat.

select count(item_fat_content) from grocery where item_fat_content="low fat";


#Q8 Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Regular.

select count(item_fat_content)  from grocery where item_fat_content="regular";


#Q9 Write an SQL query to show maximum Item_MRP.

select max(item_mrp) from grocery;


#Q10 Write an SQL query to show minimum Item_MRP

select min(item_mrp) from grocery;


#Q11 Write an SQL query to show Item_Identifier , Item_Fat_Content ,
#Item_Type, Item_MRP whose Item_MRP is greater than 200.

select Item_Identifier, Item_Fat_Content, Item_Type, Item_MRP from grocery
where item_mrp>200;


#Q12 Write an SQL query to show maximum Item_MRP WHERE Item_Fat_Content is Low Fat 

select max(item_mrp) from grocery where item_fat_content="low fat"; 


#Q13 Write an SQL query to show minimum Item_MRP whose Item_Fat_Content is Low Fat 

select min(item_mrp) from grocery where item_fat_content="low fat"; 


#Q14 Write an SQL query to show ALL DATA WHERE item MRP is BETWEEN 50 to 100

select * from grocery where item_mrp between 50 and 100;


#Q15 Write an SQL query to show ALL UNIQUE value of Item_Fat_Content

select distinct(item_fat_content) from grocery;


#Q16 Write an SQL query to show ALL UNIQUE value of  Item_Type 

select distinct(item_type) from grocery; 


#Q17 Write an SQL query to show ALL DATA in descending ORDER by Item MRP 

select * from grocery order by item_mrp desc;


#Q18 Write an SQL query to show ALL DATA in ascending ORDER by Item_Outlet_Sales

select * from grocery order by item_outlet_sales asc;


#Q19 Write an SQL query to show ALL DATA in ascending by Item_Type 

select * from grocery order by item_type asc;


#Q20 Write an SQL query to show DATA of item_type dairy & Meat

select * from grocery where item_type="dairy" or item_type="Meat";

select * from grocery where item_type in ("dairy","meat");


#Q21 Write an SQL query to show ALL UNIQUE value of Outlet_Size 

select distinct(outlet_size) from grocery;


#Q22 Write an SQL query to show ALL UNIQUE value of Outlet_Location_Type

select distinct(outlet_location_type) from grocery;


#Q23 Write an SQL query to show ALL UNIQUE value of Outlet_Type 

select distinct(outlet_type) from grocery;


#Q24 Write an SQL query to show count of number of items by Item_Type 
# and order it in descending order

select * from grocery;

#solution ans
select item_type , count(item_identifier) No_of_item from grocery
group by item_type
order by count(item_identifier) desc;

#my
select item_type , count(item_type) No_of_item from grocery
group by item_type
order by count(item_type) desc;



#Q25 Write an SQL query to show count of number of items by Outlet_Size 
#and ordered it in ascending order 

select outlet_size , count(item_identifier) No_of_items from grocery
group by outlet_size 
order by count(item_identifier) asc;

#Q26 Write an SQL query to show count of number of items by Outlet_Type 
# and ordered it in descending order.

SELECT outlet_type, COUNT(item_identifier) AS no_of_outelet_type
FROM grocery 
GROUP BY outlet_type 
ORDER BY count(item_identifier) desc;


#Q27 Write an SQL query to show count of items by Outlet_Location_Type 
#and order it in descending order

select outlet_Location_Type , count(item_identifier) no_of_items
from grocery
group by outlet_Location_Type
order by count(item_identifier) desc;


#Q28 Write an SQL query to show maximum MRP by Item_Type 

select item_type , max(item_mrp) max_mrp from grocery 
group by item_type;


#Q29 Write an SQL query to show minimum MRP by Item_Type  

select item_type , min(item_mrp) max_mrp from grocery 
group by item_type;


#Q30 Write an SQL query to show minimum MRP by Outlet_Establishment_Year and order it in descending order.

select Outlet_Establishment_Year , min(item_mrp) Minimum_mrp from grocery
group by Outlet_Establishment_Year
order by min(item_mrp) desc;


#Q31 Write an SQL query to show maximum MRP by Outlet_Establishment_Year and order it in descending order.

select Outlet_Establishment_Year , max(item_mrp) max_mrp from grocery
group by Outlet_Establishment_Year
order by min(item_mrp) desc;


#Q32 Write an SQL query to show average MRP by Outlet_Size and order it in descending order.

select outlet_size , avg(item_mrp) Avg_mrp from grocery
group by outlet_size
order by avg(item_mrp) desc;


#Q33 Write an SQL query to Average MRP by Outlet_Type and ordered in ascending order. 

select outlet_type , avg(item_mrp) avg_mrp from grocery
group by outlet_type 
order by avg(item_mrp);


#Q34 Write an SQL query to show maximum MRP by Outlet_Type

select outlet_type , max(item_mrp) max_mrp from grocery
group by outlet_type
order by max(item_mrp) desc;


#Q35 Write an SQL query to show maximum Item_Weight by Item_Type  

select item_type , max(item_weight) Max_weight from grocery
group by item_type
order by max(item_weight) desc;


#Q36 Write an SQL query to show maximum Item_Weight by Outlet_Establishment_Year 

select Outlet_Establishment_Year, max(item_weight) Max_weight from grocery
group by Outlet_Establishment_Year
order by max(item_weight) desc;

#Q37 Write an SQL query to show minimum Item_Weight by Outlet_Type  

select outlet_type , min(item_weight) min_weight from grocery
group by outlet_type 
order by min(item_weight) desc;


#Q38 Write an SQL query to show average Item_Weight by Outlet_Location_Type and arrange it by descending order

select Outlet_Location_Type, avg(item_weight) avg_weight from grocery
group by Outlet_Location_Type
order by avg(item_weight) desc;


#Q39 Write an SQL query to show maximum Item_Outlet_Sales by Item_Type

select Item_Type , max(Item_Outlet_Sales) max_sales from grocery
group by item_type;

#Q40 Write an SQL query to show minimum Item_Outlet_Sales by Item_Type 

select Item_Type , min(Item_Outlet_Sales) min_sales from grocery
group by item_type;


#Q41 Write an SQL query to show minimum Item_Outlet_Sales by Outlet_Establishment_Year 

select Outlet_Establishment_Year , min(Item_Outlet_Sales) min_sales from grocery
group by Outlet_Establishment_Year
order by min(Item_Outlet_Sales) desc;


#Q42 Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Establishment_Year and order it by descending order

select Outlet_Establishment_Year , max(Item_Outlet_Sales) max_sales from grocery
group by Outlet_Establishment_Year
order by max(Item_Outlet_Sales) desc;


#Q43 Write an SQL query to show average Item_Outlet_Sales by Outlet_Size and order it it descending order

select outlet_size , avg(Item_Outlet_Sales) avg_sales from grocery
group by outlet_size 
order by avg(Item_Outlet_Sales);

#Q44 Write an SQL query to show average Item_Outlet_Sales by Outlet_Type

select outlet_type  , avg(Item_Outlet_Sales) avg_sales from grocery
group by outlet_type
order by avg(Item_Outlet_Sales);


#Q45 Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Type 

select outlet_type  , max(Item_Outlet_Sales) max_sales from grocery
group by outlet_type
order by max(Item_Outlet_Sales) desc;


#Q46 Write an SQL query to show total Item_Outlet_Sales by Item_Type 

select item_type , sum(Item_Outlet_Sales) total_sales from grocery
group by item_type
order by sum(Item_Outlet_Sales) desc;


#Q47 Write an SQL query to show total Item_Outlet_Sales by Item_Fat_Content 

select item_fat_content  , sum(Item_Outlet_Sales) total_sales from grocery
group by item_fat_content 
order by sum(Item_Outlet_Sales) desc;


#Q48 Write an SQL query to show maximum Item_Visibility by Item_Type

select item_type , max(item_visibility) max_visibility from grocery
group by item_type
order by  max(item_visibility) desc;


#Q49 Write an SQL query to show Minimum Item_Visibility by Item_Type 

select item_type , min(item_visibility) min_visibility from grocery
group by item_type
order by  min(item_visibility) desc;


#Q50 Write an SQL query to show total Item_Outlet_Sales by Item_Type but only WHERE Outlet_Location_Type is Tier 1 

select item_type, sum(Item_Outlet_Sales) from grocery
where Outlet_Location_Type="Tier 1"
group by item_type
order by sum(Item_Outlet_Sales) desc;


#Q51 Write an SQL query to show total Item_Outlet_Sales by Item_Type WHERE Item_Fat_Content is ONLY Low Fat & LF

select item_type, sum(Item_Outlet_Sales) from grocery
where Item_Fat_Content in ("low fat","lf")
group by item_type
order by sum(Item_Outlet_Sales) desc;









