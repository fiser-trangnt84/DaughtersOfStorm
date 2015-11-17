DROP DATABASE sale;
CREATE DATABASE sale;
USE sale;

CREATE TABLE products (
  productCode int(11) NOT NULL,
  productName varchar(70) NOT NULL,
  productType varchar(50) NOT NULL,
  productDescription text NOT NULL,
  productSize varchar(5) NOT NULL,
  productColor varchar(10) NOT NULL,
  quantityInStock smallint(6) NOT NULL,
  buyPrice double NOT NULL,
  images blob NOT NULL,
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
  CONSTRAINT productCode_fk1 FOREIGN KEY (productCode) REFERENCES products (productCode) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE favoritelists (
  favoriteNumber int(11) NOT NULL,
  productCode int(11) NOT NULL,
  notice varchar(45) DEFAULT NULL,
  PRIMARY KEY (favoriteNumber,productCode),
  KEY productCode (productCode),
  CONSTRAINT favoritelists_ibfk_1 FOREIGN KEY (productCode) REFERENCES products (productCode) ON DELETE NO ACTION ON UPDATE NO ACTION
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
   CONSTRAINT cartId_fk1 FOREIGN KEY (cartId) REFERENCES usercarts (cartId) ON DELETE NO ACTION ON UPDATE NO ACTION,
   CONSTRAINT favoriteId_fk2 FOREIGN KEY (favoriteId) REFERENCES favoritelists (favoriteNumber) ON DELETE NO ACTION ON UPDATE NO ACTION,
   CONSTRAINT profileId_fk3 FOREIGN KEY (profileId) REFERENCES profiles (profileId) ON DELETE NO ACTION ON UPDATE NO ACTION
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
  CONSTRAINT idUsers_fk1 FOREIGN KEY (idUsers) REFERENCES users (idUsers) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE orderdetails (
    orderNumber INT(11) NOT NULL,
    productCode INT(11) NOT NULL,
    quantityOrdered INT(11) NOT NULL,
    priceEach DOUBLE NOT NULL,
    recipientName VARCHAR(45) NOT NULL,
    recipientPhoneNumber VARCHAR(45) NOT NULL,
    recipientAddress VARCHAR(45) NOT NULL,
    PRIMARY KEY (orderNumber , productCode),
    KEY productCode_fk2_idx (productCode),
    CONSTRAINT orderNumber_fk1 FOREIGN KEY (orderNumber)
        REFERENCES orders (orderNumber)
        ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT productCode_fk2 FOREIGN KEY (productCode)
        REFERENCES products (productCode)
        ON DELETE NO ACTION ON UPDATE NO ACTION
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;
