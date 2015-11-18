DROP DATABASE sale;
CREATE DATABASE sale;
USE sale;

CREATE TABLE products (
  productCode int(11) NOT NULL AUTO_INCREMENT,
  productName varchar(70) NOT NULL,
  productType varchar(50) NOT NULL,
  productDescription text NOT NULL,
  productSize varchar(5) NOT NULL,
  productColor varchar(10) NOT NULL,
  quantityInStock smallint(6) NOT NULL,
  buyPrice double NOT NULL,
  images VARCHAR(45) NOT NULL,
  reviews double DEFAULT NULL,
  productMaterial varchar(45) NOT NULL,
  PRIMARY KEY (productCode)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE profiles (
  profileId int(11) NOT NULL,
  fullName varchar(45) NOT NULL,
  phoneNumber varchar(45) NOT NULL,
  addressLine1 varchar(50) NOT NULL,
  addressLine2 varchar(50) DEFAULT NULL,
  notice text,
  PRIMARY KEY (profileId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE usercarts (
  cartId int(11) NOT NULL,
  productCode int(11) NOT NULL,
  notice varchar(45) DEFAULT NULL,
  PRIMARY KEY (cartId,productCode),
  KEY productCode_fk1_idx (productCode),
  CONSTRAINT productCode_fk1 FOREIGN KEY (productCode) REFERENCES products (productCode) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE favoritelists (
  favoriteNumber int(11) NOT NULL,
  productCode int(11) NOT NULL,
  notice varchar(45) DEFAULT NULL,
  PRIMARY KEY (favoriteNumber,productCode),
  KEY productCode (productCode),
  CONSTRAINT favoritelists_ibfk_1 FOREIGN KEY (productCode) REFERENCES products (productCode) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE users (
   idUsers int(11) NOT NULL AUTO_INCREMENT,
   userName varchar(45) NOT NULL,
   password varchar(45) NOT NULL,
   email varchar(45) NOT NULL,
   profileId int(11) DEFAULT NULL,
   cartId int(11) DEFAULT NULL,
   favoriteId int(11) DEFAULT NULL,
   PRIMARY KEY (idUsers),
   KEY cartId_fk1_idx (cartId),
   KEY favoriteId_fk2_idx (favoriteId),
   KEY profileId_fk3_idx (profileId),
   CONSTRAINT cartId_fk1 FOREIGN KEY (cartId) REFERENCES usercarts (cartId) ON DELETE CASCADE ON UPDATE CASCADE,
   CONSTRAINT favoriteId_fk2 FOREIGN KEY (favoriteId) REFERENCES favoritelists (favoriteNumber) ON DELETE CASCADE ON UPDATE CASCADE,
   CONSTRAINT profileId_fk3 FOREIGN KEY (profileId) REFERENCES profiles (profileId) ON DELETE CASCADE ON UPDATE CASCADE
 ) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
 
CREATE TABLE orders (
  orderNumber int(11) NOT NULL,
  orderDate date NOT NULL,
  shippedDate date DEFAULT NULL,
  status varchar(15) NOT NULL,
  comments text,
  idUsers int(11) NOT NULL,
  PRIMARY KEY (orderNumber),
  KEY idUsers_fk1_idx (idUsers),
  CONSTRAINT idUsers_fk1 FOREIGN KEY (idUsers) REFERENCES users (idUsers) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE orderdetails (
    orderNumber INT(11) NOT NULL,
    productCode INT(11) NOT NULL,
    quantityOrdered INT(11) NOT NULL,
    recipientName VARCHAR(45) NOT NULL,
    recipientPhoneNumber VARCHAR(45) NOT NULL,
    recipientAddress VARCHAR(45) NOT NULL,
    PRIMARY KEY (orderNumber , productCode),
    KEY productCode_fk2_idx (productCode),
    CONSTRAINT orderNumber_fk1 FOREIGN KEY (orderNumber)
        REFERENCES orders (orderNumber)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT productCode_fk2 FOREIGN KEY (productCode)
        REFERENCES products (productCode)
        ON DELETE CASCADE ON UPDATE CASCADE
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;

/*
 * insert data to the database
 */
INSERT INTO sale.products
(productName, 
productType,
productDescription,
productSize,
productColor,
quantityInStock,
buyPrice,
images,
reviews,
productMaterial)
VALUES
('Coat Long', 'Hot', 'That\'s a new product for this season. A great choice for all person', 'M', 'Red', '5', '15', 'img/details/anh1.png', '25', 'Coton'),
('Dress', 'New', 'good product', 'S', 'Black', '6', '45', 'img/dress1.jpg', '60', 'coton'),
('Shoes', 'Cheap', 'Like a best choice for student in this year', 'L', 'Blue navy', '0', '20', 'img/home/type/player.jpg', '50', 'vai');

INSERT INTO sale.usercarts
	(cartId, 
	productCode, 
	notice)
VALUES 
	('1', '1', 'none'),
	('2', '2', 'vip'),
	('3', '3', 'ugly');

INSERT INTO profiles 
	(profileId, 
	fullName, 
	phoneNumber, 
	addressLine1, 
	addressLine2, 
	notice) 
VALUES 
	('1', 'Doan Thi Hien', '093214', 'van nam, phuc tho, ha noi', '', 'none'),
	('2', 'Doan Hien', '098309248', 'vu ngoc phan, lang ha, ha noi', 'uet', 'admin'),
	('3', 'Nguyen Thi Trang', '0183201', 'Ha Dong, Ha Noi', 'uet', 'vip');

INSERT INTO favoritelists 
	(favoriteNumber, 
	productCode, 
	notice) 
VALUES 
	('1', '1', 'admin'),
	('2', '2', 'none'),
	('3', '3', 'none');

INSERT INTO sale.users 
	(idUsers, 
	userName, 
	password, 
	email, 
	profileId, 
	cartId, 
	favoriteId) 
VALUES 
	('1', 'admin', '1234', 'admin@db', '1', '1', '1'),
	('2', 'hiendoan', '1234', 'hien@db', '2', '2', '2'),
	('3', 'trangnguyen', '1234', 'trang@db', '3', '3', '3');

INSERT INTO sale.orders 
	(orderNumber, 
	orderDate, 
	shippedDate, 
	status, 
	comments, 
	idUsers) 
VALUES 
	('1', '2015-05-06', '2015-06-07', 'Shipped', 'good', '1'),
	('2', '2014-05-29', '2014-06-30', 'Shipped', 'late', '2'), 
	('3', '2015-07-08', '2015-07-30', 'Shipped', 'soon', '3');

INSERT INTO sale.orderdetails 
	(orderNumber, 
	productCode, 
	quantityOrdered, 
	recipientName, 
	recipientPhoneNumber, 
	recipientAddress) 
VALUES 
	('1', '2', '2', 'Trang Nguyen', '03094238', 'Ha Dong, Ha Noi'), 
	('2', '3', '5', 'Doan Hien', '032482424', 'Ha Tay'),
	('3', '1', '1', 'Luu Thom', '0238424', 'Vinh Phuc');
