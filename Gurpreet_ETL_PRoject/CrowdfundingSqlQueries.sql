-- drop tables if exists command

drop table if exists contact;
drop table if exists category;
drop table if exists subcategory;
drop table if exists campaign;


-- Creating contacts table

create table contacts(
	contact_id int NOT NULL,
	first_name VARCHAR(100) not null,
	last_name VARCHAR(100) not null,
	email VARCHAR(100) not null,
	primary key (contact_id)
	
);

-----------------------

-- Creating category table

create table category(
	category_id Varchar (100) NOT NULL,
	category VARCHAR (100) NOT NULL,
	primary key (category_id)

);

------------------------------------

-- Creating Subcategory table

create table subcategory(
	subcategory_id Varchar (100) NOT NULL,
	subcategory VARCHAR (100) NOT NULL,
	primary key (subcategory_id)

);


------------------------------------

-- Creating Campaign table

CREATE TABLE campaign (
    cf_id int NOT NULL,
    contact_id int NOT NULL,
    company_name varchar (300)  NOT NULL,
    description varchar (300)  NOT NULL,
    goal float   NOT NULL,
    pledged float   NOT NULL,
    outcome varchar (300)  NOT NULL,
    backers_count int   NOT NULL,
    country varchar (300)  NOT NULL,
    currency varchar (300)  NOT NULL,
    launched_date date   NOT NULL,
    end_date date   NOT NULL,
    category_id varchar (300)  NOT NULL,
    subcategory_id varchar (300)  NOT NULL,
	primary key (cf_id),
	foreign key (contact_id) references contacts(contact_id),
	foreign key (category_id) references category(category_id),
	foreign key (subcategory_id) references subcategory(subcategory_id)
);


------------------------------------------


select * from contacts;
select * from category;
select * from subcategory;
select * from campaign;






























































































