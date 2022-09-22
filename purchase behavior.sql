/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[name]
  FROM [master].[dbo].[products]



  select o1.order_id , o1.product_id one , o2.product_id two
  from [dbo].[orders] o1 
  inner join orders o2
  on o1.order_id = o2.order_id
  where o1.product_id > o2.product_id



  select o1.product_id one , o2.product_id two , p1.name , p2.name , count(*)
  from [dbo].[orders] o1 
  inner join orders o2
  on o1.order_id = o2.order_id
  inner join products p1 on p1.id = o1.product_id
  inner join products p2 on p2.id = o2.product_id
  where o1.product_id > o2.product_id
  group by  o1.product_id , o2.product_id , p1.name , p2.name 
 


  select concat(p1.name , ' ', p2.name ) , count(*)
  from [dbo].[orders] o1 
  inner join orders o2
  on o1.order_id = o2.order_id
  inner join products p1 on p1.id = o1.product_id
  inner join products p2 on p2.id = o2.product_id
  where o1.product_id > o2.product_id
  group by  p1.name , p2.name 
 