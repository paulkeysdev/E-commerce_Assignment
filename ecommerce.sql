CREATE DATABASE ecommercedb;

use ecommercedb;

-- products table
CREATE TABLE  products(	
product_id INT AUTO_INCREMENT PRIMARY KEY,
category_id INT NOT NULL,
brand_id INT NOT NULL,
base_price DECIMAL(10, 2) NOT NULL,
FOREIGN KEY (category_id) REFERENCES product_categories(category_id),
FOREIGN KEY (brand_id) REFERENCES brands(brand_id),FOREIGN KEY (color_id) REFERENCES colors(color_id)
);


-- product image table
CREATE TABLE product_image(
id INT  PRIMARY KEY AUTO INCREMENT,
url VARCHAR(100),
product_id INT NOT NULL,
FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- product_category table
CREATE TABLE product_category (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL
);

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


--Attribute_category table
CREATE TABLE attribute_category (
  attribute_category_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

-- color table
CREATE TABLE color (
  color_id INT AUTO_INCREMENT PRIMARY KEY,
  color_name VARCHAR(50) NOT NULL,
);

-- Size_Category table
CREATE TABLE size_category (
  size_category_id INT AUTO_INCREMENT PRIMARY KEY,
  category_name VARCHAR(100) NOT NULL
);