create table sample (
    id varchar(100) not null,
    name varchar(100) not null,
    primary key (id)
) engine innodb;

SELECT * FROM sample;

create table customers
(
    id      varchar(100) not null,
    name    varchar(100) not null,
    email   varchar(100) not null,
    phone   varchar(100) not null,
    primary key (id),
    constraint customer_email_unique unique (email),
    constraint customer_phone_unique unique (phone)
) engine innodb;

SELECT * FROM customers;

SELECT * FROM customers where name = "Eko";

create table products (
    id VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    price INT NOT NULL,
    stock INT NOT NULL,
    category VARCHAR(100) NOT NULL,
    primary key (id)
) engine innodb;

SELECT * FROM products;

insert into products(id, name, price, stock, category)
    value ('P0001', 'A', 1000, 100, 'K1'),
    ('P0002', 'B', 2000, 200, 'K1'),
    ('P0003', 'C', 3000, 300, 'K1'),
    ('P0004', 'D', 4000, 400, 'K1'),
    ('P0005', 'E', 5000, 500, 'K1');

insert into products(id, name, price, stock, category)
    value ('P0006', 'A', 1000, 100, 'K2'),
    ('P0007', 'B', 2000, 200, 'K2'),
    ('P0008', 'C', 3000, 300, 'K2'),
    ('P0009', 'D', 4000, 400, 'K2'),
    ('P0010', 'E', 5000, 500, 'K2');

create table categories (
    id      INT             not null AUTO_INCREMENT,
    name    VARCHAR(100)    not NULL,
    primary key (id)
) engine innodb;

SELECT * FROM categories;

create table wallet
(
    id          VARCHAR(100) not null,
    balance     INT          not null,
    customer_id VARCHAR(100) not null,
    primary key (id),
    constraint wallet_customer_id_fk Foreign Key (customer_id) REFERENCES customers (id),
    constraint wallet_customer_id_unique UNIQUE (customer_id)
) engine innodb;
    
SELECT * FROM wallet;