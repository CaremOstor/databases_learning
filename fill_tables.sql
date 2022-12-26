-- Customers
INSERT INTO customer(name, phone, email)
	VALUES('James', '89991112233', 'jms@gmail.com');

INSERT INTO customer(name, phone, email)
	VALUES('Charlotte', '89993332211', 'chr@gmail.com');

-- Products
INSERT INTO product(name, description, price)
	VALUES('Accordion Jupiter 4/4', 'Awesome instrument with full register & octaves set. 12+', 240000);

INSERT INTO product(name, description, price)
	VALUES('Accordion Jupiter 3/4', 'Awesome instrument with many register & octaves. 8+', 12000);

INSERT INTO product(name, description, price)
	VALUES('Accordion Jupiter 1/2', 'Awesome instrument with few register & octaves. 4+', 60000);

-- Product photos
INSERT INTO product_photo(url, product_id)
	VALUES('jupiter44_photo', 1);

INSERT INTO product_photo(url, product_id)
	VALUES('jupiter34_photo', 2);


