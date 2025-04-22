
create database chette;

use chette;
 



--Creation Database


create table brand( brand_id int primary key identity(1,1), 
brand_name varchar(225) not null unique
) ;

create table model( model_id int primary key identity(1,1),
model_name varchar(225),
brand_id int,
foreign key(brand_id) references brand(brand_id)
) ;



create table country(country_id int primary key identity(1,1),
country_name varchar(100) not null unique
) ;

create table seller(seller_id int primary key identity(1,1),
seller_name varchar(225) not null unique
) ;


create table dim_date(dim_date_id int primary key identity(1,1),
year int,
month int,
day int
) ;


create table sale_fact(sale_fact_id int primary key identity(1,1),
model_id int,
country_id int,
dim_date_id int,
seller_id int,
quantity int,
sale_cost bigint,
foreign key(model_id) references model(model_id),
foreign key(country_id) references country(country_id),
foreign key(dim_date_id) references dim_date(dim_date_id),
foreign key(seller_id) references seller(seller_id)
) ;






 select *  from brand;

  select *  from model;

   select *  from country;


    select *  from dim_date;


	 select *  from seller;

	 select *  from sale_fact;

	 select sale_cost from sale_fact;




	 --I change the column id,id in name in the column sale_fact
 


	 SELECT 
    sf.sale_fact_id,
    m.model_name,
    c.country_name,
    d.year,
    d.month,
    d.day,
    s.seller_name,
    sf.quantity,
    sf.sale_cost
FROM 
    sale_fact sf
JOIN 
    model m ON sf.model_id = m.model_id
JOIN 
    country c ON sf.country_id = c.country_id
JOIN 
    dim_date d ON sf.dim_date_id = d.dim_date_id
JOIN 
    seller s ON sf.seller_id = s.seller_id
;




	 












