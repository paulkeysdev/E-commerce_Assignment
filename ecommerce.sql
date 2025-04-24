use ecommercedb;

-- product_item table
CREATE TABLE product_item (
	id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    FOREIGN KEY (product_id) REFERENCES product(id)
);

-- product_attribute table
CREATE TABLE product_attribute (
	id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT,
    color VARCHAR(200),
    FOREIGN KEY (category_id) 
		REFERENCES attribute_category(id),
	FOREIGN KEY (color) REFERENCES color(name)
);

-- brand table
CREATE TABLE brand (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200)
);

