--CREATING TABLES
CREATE Table product (
  sku INT NOT NULL,
  name varchar(255) NOT NULL,
  price INT,
  rating INT,
  category VARCHAR(50),
  PRIMARY KEY(sku)
);
CREATE Table feature (
  feature_id INT NOT NULL,
  feature VARCHAR(20),
  primary KEY (feature_id)
);
CREATE Table color (
  color_id INT NOT NULL,
  colorName VARCHAR(20),
  PRIMARY KEY (color_id)
);
CREATE Table capacity (
  capacity_id INT NOT NULL,
  capacity VARCHAR(10),
  primary KEY (capacity_id)
);
CREATE Table junction1 (
  sku INT,
  color_id INT,
  FOREIGN KEY (color_id) REFERENCES color(color_id)
);

CREATE Table junction2 (
  sku INT,  
  capacity_id INT,
  FOREIGN KEY (capacity_id) REFERENCES capacity(capacity_id)
);
CREATE Table junction3 (
  sku INT,
  feature_id INT,
  FOREIGN KEY (feature_id) REFERENCES feature(feature_id)
);

-- INSERTING IN PRODUCT TABLE
-- INSERT INTO product VALUES("SKU","NAME","PRICE","RATING");
INSERT INTO product VALUES('1000','Cool N Chic Flower','3199','5','on the go');
INSERT INTO product VALUES('1001','Click to Go Lunch Carrier','999','3','on the go');
INSERT INTO product VALUES('1002','Oval Dry Storage Containers','2099','7','dry storage');
INSERT INTO product VALUES('1003','Snack Pulses Lentils Storer Container','1499','10','dry storage');
INSERT INTO product VALUES('1004','Cubix Small','2699','7','Conservation');
INSERT INTO product VALUES('1005','SS BOWL','23299','10','Conservation');
INSERT INTO product VALUES('1006','Retro Bottle','1399','4','bottle');
INSERT INTO product VALUES('1007','Slim Line Set','2499','5','bottle');
INSERT INTO product VALUES('1008','Smart Manual Chopper','2799','7','appliences');
INSERT INTO product VALUES('1009','U Series Paring Knife','3899','3','appliences');
INSERT INTO product VALUES('1010','Slicer Dicer Mando Junior','1699','7','appliences');
INSERT INTO product VALUES('1011','Snack Serving Stand','1999','10','serving');
INSERT INTO product VALUES('1012','Metric Melamine Collection','2699','10','serving');
INSERT INTO product VALUES('1013','PORCELAIN FLORAL COLLECTION','1899','3','serving');
INSERT INTO product VALUES('1014','Cake Maker Silicone Football Form Mould','2299','5','bakeware');
INSERT INTO product VALUES('1015','Silicon Baking Mold','2299','5','bakeware');
INSERT INTO product VALUES('1016','Black Series Stock Pot','3199','3','steel & cookware');
INSERT INTO product VALUES('1017','Universal Series Frypan','11899','10','steel & cookware');
INSERT INTO product VALUES('1018','Inspire Chef Cookware Sauce Pan','3099','2','steel & cookware');
INSERT INTO product VALUES('1019','Dora Kids Lunch Set','1499','8','kids');
INSERT INTO product VALUES('1020','Kids Slim Lunch with Bottle Set','2599','5','kids');

-- INSERTING IN FEATURE TABLE
--INSERT INTO feature VALUES('feature_id','feature');
INSERT INTO feature VALUES('2976','Spill Proof');
INSERT INTO feature VALUES('2977','Easy to Clean');
INSERT INTO feature VALUES('2978','Stackable');
INSERT INTO feature VALUES('2979','Air-tight');
INSERT INTO feature VALUES('2980','Ergonomic Shape');
INSERT INTO feature VALUES('2981','Frezzer');
INSERT INTO feature VALUES('2982','Insulated');
INSERT INTO feature VALUES('2983','Wide Mouth');
INSERT INTO feature VALUES('2984','Smooth Flow');
INSERT INTO feature VALUES('2985','Adjustable');
INSERT INTO feature VALUES('2986',' Protective Sheath');
INSERT INTO feature VALUES('2987','Anti-corrosion');
INSERT INTO feature VALUES('2988','Easy-grip');
INSERT INTO feature VALUES('2989','Microwaveable');
INSERT INTO feature VALUES('2990','Oven Safe');
INSERT INTO feature VALUES('2991','Withstand 220°C');
INSERT INTO feature VALUES('2992','Evenly cooking');

-- INSERTING IN COLOR TABLE
-- INSERT INTO color VALUES('color_id','color');
INSERT INTO color VALUES('001100','Green');
INSERT INTO color VALUES('110000','Red');
INSERT INTO color VALUES('000011','Blue');
INSERT INTO color VALUES('111100','Yellow');

-- INSERTING IN CAPACITY TABLE
-- INSERT INTO capacity VALUES('capacity_id','capacity');
INSERT INTO capacity VALUES('1','1L');
INSERT INTO capacity VALUES('2','1.5L');
INSERT INTO capacity VALUES('3','2L');
INSERT INTO capacity VALUES('4','2.5L');
INSERT INTO capacity VALUES('5','3L');
INSERT INTO capacity VALUES('6','4L');

-- INSERTING IN junctin1 color TABLE
-- INSERT INTO junction1 VALUES("sku","color_id")
INSERT INTO junction1 VALUES ('1000','1100');
INSERT INTO junction1 VALUES ('1001','1100');
INSERT INTO junction1 VALUES ('1002','110000');
INSERT INTO junction1 VALUES ('1003','110000');
INSERT INTO junction1 VALUES ('1004','111100');
INSERT INTO junction1 VALUES ('1005','11');
INSERT INTO junction1 VALUES ('1006','111100');
INSERT INTO junction1 VALUES ('1006','1100');
INSERT INTO junction1 VALUES ('1007','110000');
INSERT INTO junction1 VALUES ('1008','1100');
INSERT INTO junction1 VALUES ('1009','11');
INSERT INTO junction1 VALUES ('1009','1100');
INSERT INTO junction1 VALUES ('1010','11');
INSERT INTO junction1 VALUES ('1011','1100');
INSERT INTO junction1 VALUES ('1012','1100');
INSERT INTO junction1 VALUES ('1012','11');
INSERT INTO junction1 VALUES ('1013','11');
INSERT INTO junction1 VALUES ('1013','110000');
INSERT INTO junction1 VALUES ('1014','1100');
INSERT INTO junction1 VALUES ('1015','1100');
INSERT INTO junction1 VALUES ('1015','110000');
INSERT INTO junction1 VALUES ('1016','110000');
INSERT INTO junction1 VALUES ('1016','1100');
INSERT INTO junction1 VALUES ('1017','1100');
INSERT INTO junction1 VALUES ('1018','110000');
INSERT INTO junction1 VALUES ('1019','110000');
INSERT INTO junction1 VALUES ('1020','11');

-- INSERTING IN junctin2 feature TABLE
-- INSERT INTO junction2 VALUES("sku","capacity_id")
INSERT INTO junction2 VALUES ('1000','3');
INSERT INTO junction2 VALUES ('1001','1');
INSERT INTO junction2 VALUES ('1002','5');
INSERT INTO junction2 VALUES ('1003','1');
INSERT INTO junction2 VALUES ('1003','2');
INSERT INTO junction2 VALUES ('1004','2');
INSERT INTO junction2 VALUES ('1005','1');
INSERT INTO junction2 VALUES ('1005','3');
INSERT INTO junction2 VALUES ('1006','1');
INSERT INTO junction2 VALUES ('1007','1');
INSERT INTO junction2 VALUES ('1007','3');
INSERT INTO junction2 VALUES ('1011','4');
INSERT INTO junction2 VALUES ('1012','5');
INSERT INTO junction2 VALUES ('1012','6');
INSERT INTO junction2 VALUES ('1015','5');
INSERT INTO junction2 VALUES ('1015','6');
INSERT INTO junction2 VALUES ('1016','5');
INSERT INTO junction2 VALUES ('1016','2');
INSERT INTO junction2 VALUES ('1017','5');
INSERT INTO junction2 VALUES ('1018','3');
INSERT INTO junction2 VALUES ('1019','2');
INSERT INTO junction2 VALUES ('1020','1');

-- INSERTING IN junctin3 capacity TABLE
-- INSERT INTO junction3 VALUES("sku","feature_id")
INSERT INTO junction3 VALUES ('1000','2976');
INSERT INTO junction3 VALUES ('1000','2977');
INSERT INTO junction3 VALUES ('1001','2976');
INSERT INTO junction3 VALUES ('1001','2977');
INSERT INTO junction3 VALUES ('1002','2978');
INSERT INTO junction3 VALUES ('1002','2979');
INSERT INTO junction3 VALUES ('1003','2980');
INSERT INTO junction3 VALUES ('1003','2979');
INSERT INTO junction3 VALUES ('1004','2980');
INSERT INTO junction3 VALUES ('1004','2981');
INSERT INTO junction3 VALUES ('1004','2978');
INSERT INTO junction3 VALUES ('1005','2981');
INSERT INTO junction3 VALUES ('1005','2978');
INSERT INTO junction3 VALUES ('1006','2980');
INSERT INTO junction3 VALUES ('1006','2982');
INSERT INTO junction3 VALUES ('1006','2983');
INSERT INTO junction3 VALUES ('1007','2984');
INSERT INTO junction3 VALUES ('1007','2980');
INSERT INTO junction3 VALUES ('1008','2985');
INSERT INTO junction3 VALUES ('1009','2986');
INSERT INTO junction3 VALUES ('1009','2987');
INSERT INTO junction3 VALUES ('1010','2988');
INSERT INTO junction3 VALUES ('1010','2985');
INSERT INTO junction3 VALUES ('1014','2989');
INSERT INTO junction3 VALUES ('1014','2990');
INSERT INTO junction3 VALUES ('1015','2989');
INSERT INTO junction3 VALUES ('1015','2990');
INSERT INTO junction3 VALUES ('1016','2991');
INSERT INTO junction3 VALUES ('1016','2992');
INSERT INTO junction3 VALUES ('1017','2991');
INSERT INTO junction3 VALUES ('1017','2992');
INSERT INTO junction3 VALUES ('1018','2991');
INSERT INTO junction3 VALUES ('1018','2992');

SELECT  name, colorName
FROM junction1 j1,product p,color c
where j1.sku = p.sku and j1.color_id = c.color_id
ORDER BY name ASC;
SELECT  name,capacity 
FROM junction2 j2,product p,capacity cap
WHERE j2.sku = p.sku and j2.capacity_id = cap.capacity_id
ORDER BY name ASC;
SELECT  name,feature 
FROM junction3 j3,product p,feature f
WHERE j3.sku = p.sku and j3.feature_id = f.feature_id
ORDER BY name ASC;

select * FROM product;
SELECT * FROM color;
SELECT * FROM capacity;
SELECT * FROM feature;
SELECT * FROM junction1;
SELECT * FROM junction2;
SELECT * FROM junction3;

