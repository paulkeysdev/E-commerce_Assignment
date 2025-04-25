CREATE DATABASE ecommercedb;

USE ecommercedb;

-- brand table
CREATE TABLE brands (
	brand_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200)
);

-- product_category table
CREATE TABLE product_category (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL
);

-- products table
CREATE TABLE  products(	
product_id INT AUTO_INCREMENT PRIMARY KEY,
category_id INT NOT NULL,
brand_id INT NOT NULL,
base_price DECIMAL(10, 2) NOT NULL,
FOREIGN KEY (category_id) REFERENCES product_category(id),
FOREIGN KEY (brand_id) REFERENCES brands(brand_id)
);


-- product image table
CREATE TABLE product_image(
id INT  PRIMARY KEY AUTO_INCREMENT,
url VARCHAR(100),
product_id INT NOT NULL,
FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- product_item table
CREATE TABLE product_item (
	id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Attribute_category table
CREATE TABLE attribute_category (
  attribute_category_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

-- color table
CREATE TABLE color (
  color_id INT AUTO_INCREMENT PRIMARY KEY,
  color_name VARCHAR(50) NOT NULL
);

-- Size_Category table
CREATE TABLE size_category (
  size_category_id INT AUTO_INCREMENT PRIMARY KEY,
  category_name VARCHAR(100) NOT NULL
);

-- Create attribute_type table

CREATE TABLE Attribute_type(
AttributeTypeID INT PRIMARY KEY AUTO_INCREMENT,
AttributeType VARCHAR(50)
);
-- product_attribute table
CREATE TABLE product_attribute (
	id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT,
    color INT,
	attributeType_id INT,
    FOREIGN KEY (category_id) REFERENCES attribute_category(attribute_category_id),
	FOREIGN KEY (color) REFERENCES color(color_id),
    FOREIGN KEY (attributeType_id) REFERENCES Attribute_type(AttributeTypeID)
);

-- Create size option table
CREATE TABLE Size_option(
SizeOptID INT PRIMARY KEY AUTO_INCREMENT,
Size VARCHAR (50)
);

-- Create Product_Variation table
CREATE TABLE Product_Variation(
ProductVarID INT PRIMARY KEY AUTO_INCREMENT,
Product_Id INT,
Color_Id INT,
size_id INT,
FOREIGN KEY (Product_Id) REFERENCES products(product_id),
FOREIGN KEY (Color_Id) REFERENCES color(color_id),
FOREIGN KEY (Size_Id) REFERENCES Size_option(SizeOptID)
);

