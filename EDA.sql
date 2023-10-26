--query 1 : Berapa rata-rata umur customer jika dilihat dari marital statusnya ?
select
    case
        when "Marital Status" = '' then 'Unknown'
        else "Marital Status"
    end as marital_status,
    avg(age) as average_age
from customers c 
group by marital_status;

--query 2 : Berapa rata-rata umur customer jika  dilihat dari gender nya ?
select
    case
        when gender = '1' then 'Male'
        else 'Female'
    end as Gender,
    avg(age) as average_age
from customers c 
group by 1;

--query 3 : Tentukan nama store dengan total quantity terbanyak!
select s.storename, sum(t.qty) as total_qty
from store s
join transactions t 
	on s.storeid = t.storeid
group by 1
order by 2 desc
limit 1;

--query 4 : Tentukan nama produk terlaris dengan total amount terbanyak!
select p."Product Name", sum(t.totalamount) as Total_Amount
from product p 
join transactions t 
	on p.productid = t.productid 
group by 1
order by 2 desc
limit 1;