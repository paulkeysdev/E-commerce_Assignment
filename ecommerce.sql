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

