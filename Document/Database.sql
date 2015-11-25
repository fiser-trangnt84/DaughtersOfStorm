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
  quantitySold smallint(6) NOT NULL,
  quantityInStock smallint(6) NOT NULL,
  saleOff double NOT NULL,
  buyPrice double NOT NULL,
  images VARCHAR(45) NOT NULL,
  productMaterial varchar(45) NOT NULL,
  PRIMARY KEY (productCode)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE votes (
  voteId int(11) NOT NULL AUTO_INCREMENT,
  5stars int(11) DEFAULT NULL,
  4stars int(11) DEFAULT NULL,
  3stars int(11) DEFAULT NULL,
  2stars int(11) DEFAULT NULL,
  1star int(11) DEFAULT NULL,
  productCode int(11) NOT NULL,
  PRIMARY KEY (voteId),
  KEY productCode_pk1_idx (productCode),
  CONSTRAINT productCode_pk1 FOREIGN KEY (productCode) REFERENCES products (productCode) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE users (
  userId int(11) NOT NULL AUTO_INCREMENT,
  userName varchar(45) NOT NULL,
  password varchar(45) NOT NULL,
  email varchar(45) NOT NULL,
  status varchar(45) NOT NULL,
  fullName varchar(45) DEFAULT NULL,
  phoneNumber varchar(45) DEFAULT NULL,
  address varchar(100) DEFAULT NULL,
  PRIMARY KEY (userId)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

CREATE TABLE usercarts (
  cartId int(11) NOT NULL,
  productCode int(11) NOT NULL,
  userId int(11) NOT NULL,
  notice text,
  PRIMARY KEY (cartId,productCode),
  KEY productCode_fk1_idx (productCode),
  KEY userIdCart_fk2_idx (userId),
  CONSTRAINT cartId_fk1 FOREIGN KEY (productCode) REFERENCES products (productCode) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT userIdCart_fk2 FOREIGN KEY (userId) REFERENCES users (userId) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE favoritelists (
  favoriteNumber int(11) NOT NULL,
  productCode int(11) NOT NULL,
  userId int(11) NOT NULL,
  notice varchar(45) DEFAULT NULL,
  PRIMARY KEY (favoriteNumber,productCode),
  KEY productCode (productCode),
  KEY userId_fk2 (userId),
  CONSTRAINT favoritelists_ibfk_1 FOREIGN KEY (productCode) REFERENCES products (productCode) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT userId_fk2 FOREIGN KEY (userId) REFERENCES users (userId) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE orders (
  orderNumber int(11) NOT NULL AUTO_INCREMENT,
  orderDate date NOT NULL,
  shippedDate date DEFAULT NULL,
  status varchar(15) NOT NULL,
  comments text,
  userId int(11) NOT NULL,
  PRIMARY KEY (orderNumber),
  KEY userIdOrder_fk1_idx (userId),
  CONSTRAINT userId_fk1 FOREIGN KEY (userId) REFERENCES users (userId) ON DELETE CASCADE ON UPDATE CASCADE
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
quantitySold,
quantityInStock,
saleOff,
buyPrice,
images,
productMaterial)
VALUES
('Trench Coat Parka', 'Hot', 'Womens Thicken Warm Winter Trench Coat Parka Overcoat Long Jacket Outwear', 'M', 'Brown', '5', '7', '0.1', '15', 'img/dress1.jpg',  'Felt'),
('Dresses Winter', 'Hot', 'Korean 2015 New Fashion Dresses Winter dress LY09509 Elegant wool women\'s mini dresses', 'S', 'Pink', '50', '6', '0', '45', 'img/dress2.jpg', 'Wool'),
('Ponchos', 'Hot', '10 Colors Fashion Ponchos A1193 Cape Type Loose wool blend Women\'s Coats', 'M', 'Blue', '10', '4', '0.1', '15', 'img/dress3.jpg', 'Felt'),
('Long-sleeved winter','Hot', '2015 spring new European style women long-sleeved winter dress package hip Slim long sweater', 'M', 'Blue navy', '5', '7', '0.1', '15', 'img/dress4.jpg', 'Felt'),
('Long Sleeve Black', 'Hot', 'Fashion Winter Dress 2015 OL Style Women Work Wear Empire Elegant Bodycon Knee-Length Long Sleeve Black Dresses', 'L', 'Black', '5', '7', '0', '60', 'img/dress5.jpg','Cotton'),
('Sweater dress', 'Hot', 'Verragee new high-end European and American temperament autumn sweater dress in loose sleeveless dress large size women female H', 'S', 'Red', '190', '7', '0', '91', 'img/dress9.jpg',  'Cotton'),
('Slim long organza dress', 'Trend', 'Verragee long dress 2015 Hitz European and American temperament Slim long organza dress length dress big yards female female', 'L', 'Black', '5', '7', '0', '118', 'img/dress10.jpg', 'Polyester,Lanon'),
('Raincoat style', 'Trend', 'Here we see a brightly red design, which has a traditional fit and comes with front zipped', 'S', 'Red', '5', '7', '0', '18', 'img/coat1.jpg', 'Polyester'),
('Cool parka', 'Trend', 'Keep you warm and cozy even in the most chilliest days, long length and official khaki green or olive color', 'M', 'Black', '5', '7', '0', '108', 'img/jacket3.jpg',  'Polyester' ),
('Winter O-neck long', 'Trend', '2015 New vintage floral long dress women\'s autumn winter O-neck long sleeve maxi dress slim plus size color block dress', 'M', 'Black', '10', '15', '0.1', '140', 'img/dress1.jpg', 'Silk'),
('Trench Coat Parka', 'Trend', 'Womens Thicken Warm Winter Trench Coat Parka Overcoat Long Jacket Outwear', 'M', 'Red', '5', '7', '0.1', '15', 'img/dress3.jpg',  'Felt'),
('Winter Long-Sleeved','Trend', 'Perfect for dressing down with a pair of Chucks or dressing up with the perfect accessories', 'S', 'Black', '10', '11', '0', '50', 'img/dress6.jpg', 'Silk'),
('Long-sleeved dress', 'Top', 'Differentes woman dress winter 2015 Elegant and generous 2015 new fall dress retro print long-sleeved dress big yards long sect','M', 'Black', '5', '7', '0', '123', 'img/dress7.jpg', 'Silk'),
('Long sweater cardigan', 'Top', 'Verragee new high-end European and American Autumn temperament long sweater cardigan sweater coat large size women female High', 'L', 'Black', '5', '7', '0', '180', 'img/dress8.jpg', 'Thin Wool'),
('Sweater dress', 'Top', 'Verragee new high-end European and American temperament autumn sweater dress in loose sleeveless dress large size women female H', 'S', 'Red', '190', '7', '0', '91', 'img/dress9.jpg',  'Cotton'),
('Slim long organza dress', 'Top', 'Verragee long dress 2015 Hitz European and American temperament Slim long organza dress length dress big yards female female', 'L', 'Black', '5', '7', '0', '118', 'img/dress10.jpg', 'Polyester,Lanon'),
('Raincoat style', 'Top', 'Here we see a brightly red design, which has a traditional fit and comes with front zipped', 'S', 'Red', '5', '7', '0', '18', 'img/coat1.jpg',  'Polyester'),
('Cool parka', 'Top', 'Keep you warm and cozy even in the most chilliest days, long length and official khaki green or olive color', 'M', 'Black', '5', '7', '0', '108', 'img/jacket3.jpg',  'Polyester' ),
('Cool parka blue', 'Cheap', 'Keep you warm and cozy even in the most chilliest days, long length and official khaki green or olive color', 'M', 'Blue', '5', '7', '0', '108', 'img/jacket2.jpg',  'Polyester'),
('Sweater dress', 'Cheap', 'Verragee new high-end European and American temperament autumn sweater dress in loose sleeveless dress large size women female H', 'S', 'Red', '190', '7', '0', '91', 'img/dress9.jpg',  'Cotton'),
('Slim long organza dress', 'Cheap', 'Verragee long dress 2015 Hitz European and American temperament Slim long organza dress length dress big yards female female', 'L', 'Black', '5', '7', '0', '118', 'img/dress10.jpg', 'Polyester,Lanon'),
('Raincoat style', 'Cheap', 'Here we see a brightly red design, which has a traditional fit and comes with front zipped', 'S', 'Red', '5', '7', '0', '18', 'img/coat1.jpg',  'Polyester'),
('Cool parka', 'Cheap', 'Keep you warm and cozy even in the most chilliest days, long length and official khaki green or olive color', 'M', 'Black', '5', '7', '0', '108', 'img/jacket3.jpg',  'Polyester' ),
('Women\'s jackets cozy outerwear', 'Cheap', 'A product that\'s quirky, polished, bright and versatile design, which is not only fashionable, but also functional', 'S', 'Black', '5', '27','0', '150', 'img/jacket1.jpg','Felt'),
('Raincoat style', 'New', 'Here we see a brightly red design, which has a traditional fit and comes with front zipped', 'S', 'Red', '5', '7', '0', '18', 'img/coat1.jpg',  'Polyester'),
('Cool parka', 'New', 'Keep you warm and cozy even in the most chilliest days, long length and official khaki green or olive color', 'M', 'Black', '5', '7', '0', '108', 'img/jacket3.jpg',  'Polyester' ),
('Cool parka blue', 'New', 'Keep you warm and cozy even in the most chilliest days, long length and official khaki green or olive color', 'M', 'Blue', '5', '7', '0', '108', 'img/jacket2.jpg',  'Polyester'),
('Sweater dress', 'New', 'Verragee new high-end European and American temperament autumn sweater dress in loose sleeveless dress large size women female H', 'S', 'Red', '190', '7', '0', '91', 'img/dress9.jpg',  'Cotton'),
('Slim long organza dress', 'New', 'Verragee long dress 2015 Hitz European and American temperament Slim long organza dress length dress big yards female female', 'L', 'Black', '5', '7', '0', '118', 'img/dress10.jpg',  'Polyester,Lanon'),
('Raincoat style', 'New', 'Here we see a brightly red design, which has a traditional fit and comes with front zipped', 'S', 'Red', '5', '7', '0', '18', 'img/coat1.jpg',  'Polyester'),
('Dresses Winter', 'Style', 'Korean 2015 New Fashion Dresses Winter dress LY09509 Elegant wool women\'s mini dresses', 'S', 'Pink', '50', '6', '0', '45', 'img/dress2.jpg', 'Wool'),
('Ponchos', 'Style', '10 Colors Fashion Ponchos A1193 Cape Type Loose wool blend Women\'s Coats', 'M', 'Blue', '10', '4', '0.1', '15', 'img/dress3.jpg','Felt'),
('Long-sleeved winter','Style', '2015 spring new European style women long-sleeved winter dress package hip Slim long sweater', 'M', 'Blue navy', '5', '7', '0.1', '15', 'img/dress4.jpg',  'Felt'),
('Long Sleeve Black', 'Style', 'Fashion Winter Dress 2015 OL Style Women Work Wear Empire Elegant Bodycon Knee-Length Long Sleeve Black Dresses', 'L', 'Black', '5', '7', '0', '60', 'img/dress5.jpg',  'Cotton'),
('Cool parka', 'Style', 'Keep you warm and cozy even in the most chilliest days, long length and official khaki green or olive color', 'M', 'Black', '5', '7', '0', '108', 'img/jacket3.jpg',  'Polyester' ),
('Women\'s jackets cozy outerwear', 'Style', 'A product that\'s quirky, polished, bright and versatile design, which is not only fashionable, but also functional', 'S', 'Black', '5', '27','0', '150', 'img/jacket1.jpg', 'Felt'),
('Raincoat style', 'Sale', 'Here we see a brightly red design, which has a traditional fit and comes with front zipped', 'S', 'Red', '5', '7', '0', '18', 'img/coat1.jpg',  'Polyester'),
('Cool parka', 'Sale', 'Keep you warm and cozy even in the most chilliest days, long length and official khaki green or olive color', 'M', 'Black', '5', '7', '0', '108', 'img/jacket3.jpg',  'Polyester' ),
('Cool parka blue', 'Sale', 'Keep you warm and cozy even in the most chilliest days, long length and official khaki green or olive color', 'M', 'Blue', '5', '7', '0', '108', 'img/jacket2.jpg',  'Polyester'),
('Sweater dress', 'Sale', 'Verragee new high-end European and American temperament autumn sweater dress in loose sleeveless dress large size women female H', 'S', 'Red', '190', '7', '0', '91', 'img/dress9.jpg',  'Cotton'),
('Slim long organza dress', 'Sale', 'Verragee long dress 2015 Hitz European and American temperament Slim long organza dress length dress big yards female female', 'L', 'Black', '5', '7', '0', '118', 'img/dress10.jpg',  'Polyester,Lanon'),
('Raincoat style', 'Sale', 'Here we see a brightly red design, which has a traditional fit and comes with front zipped', 'S', 'Red', '5', '7', '0', '18', 'img/coat1.jpg',  'Polyester');

INSERT INTO sale.votes
(5stars,
4stars,
3stars,
2stars,
1star,
productCode)
VALUES
(1, 2, 3, 4, 5, 1),
(2, 45, 21, 23, 213, 2),
(23, 324, 3, 23, 21, 3),
(12, 2, 1, 2, 1, 4),
(12123, 2, 1, 432, 1, 5),
(12213, 2, 2, 2, 2, 6);


INSERT INTO sale.users 
	(userId, 
	userName, 
	password, 
	email,
	status,
	fullName, 
	phoneNumber, 
	address) 
VALUES 
	('1', 'admin', '1234', 'admin@db', 'offline', 'Doan Thi Hien', '093214', 'van nam, phuc tho, ha noi'),
	('2', 'hiendoan', '1234', 'hien@db', 'offline', 'Doan Hien', '098309248', 'vu ngoc phan, lang ha, ha noi'),
	('3', 'trangnguyen', '1234', 'trang@db', 'offline', 'Nguyen Thi Trang', '0183201', 'Ha Dong, Ha Noi');

INSERT INTO sale.usercarts
	(cartId, 
	productCode,
	userId, 
	notice)
VALUES 
	('1', '1', '1', 'none'),
	('2', '2', '2', 'vip'),
	('3', '3', '3', 'ugly');

INSERT INTO favoritelists 
	(favoriteNumber, 
	productCode,
	userId,
	notice) 
VALUES 
	('1', '1', '1', 'admin'),
	('2', '2', '2', 'none'),
	('3', '3', '3', 'none');

INSERT INTO sale.orders 
	(orderNumber, 
	orderDate, 
	shippedDate, 
	status, 
	comments, 
	userId) 
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
