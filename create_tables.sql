-- Main tables
CREATE TABLE customer(
	id serial primary key,
	name varchar(255),
	phone varchar(30),
	email varchar(255)
);
CREATE TABLE product(
	id serial primary key,
	name varchar(255),
	description text,
	price integer
);

-- Entities with references to main tables
CREATE TABLE product_photo(
	id serial primary key,
	url varchar(255),
	product_id integer references product(id)
);
CREATE TABLE cart(
	id serial primary key,
	customer_id integer references customer(id)
);

-- Many-to-Many relationship table
CREATE TABLE cart_product(
	cart_id integer references product(id),
	product_id integer references product(id)
);
