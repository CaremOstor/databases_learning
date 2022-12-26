-- JOIN examples
-- p and pp is aliases. p = product, pp = product_photo

-----------------
-- Outer Joins --
-----------------

-- LEFT JOIN. Selection of all photos with their products
-- if product not exists blank string(null) will be returned
SELECT pp.*, p.name
FROM product_photo pp
LEFT JOIN product p on p.id=pp.product_id;


-- RIGHT JOIN. Selection of all products with their photos
-- if photo not exists blank string(null) will be returned
SELECT pp.*, p.name
FROM product_photo pp
RIGHT JOIN product p on p.id=pp.product_id;


----------------
-- Inner Join --
----------------

-- Inner Join. Selection of all products/photo pairs
-- if product hasn't photo or photo hasnt't product string will be ignored
SELECT pp.*, p.name
FROM product_photo pp
INNER JOIN product p on p.id=pp.product_id;
