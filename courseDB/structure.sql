﻿ TABLE customer(
Customer_ID INTEGER PRIMARY KEY NOT NULL,
Username TEXT NOT NULL, -- VARCHAR(20)
Fillname TEXT NOT NULL, -- delete this attribute
-- first_name VARCHAR(15) NOT NULL,
-- second_name VARCHAR(15) NOT NULL,
Residence_address TEXT, -- CHAR(100)
Phone TEXT NOT NULL, -- SMALLINT
Email TEXT NOT NULL, -- VARCHAR(30)
GPS_location TEXT NOT NULL -- VARCHAR(100));


 TABLE bank_card(
Number INTEGER PRIMARY KEY NOT NULL, 
Expire TEXT NOT NULL, -- DATE
Security_code INTEGER NOT NULL); -- SMALLINT


 TABLE car_order(
Order_ID INTEGER PRIMARY KEY NOT NULL,
Cost INTEGER NOT NULL, -- SMALLINT
Pickup TEXT NOT NULL, -- delete this attribute
Destination TEXT NOT NULL, -- delete this attribute
--initial_location VARCHAR(100) NOT NULL,
--pickup_location VARCHAR(100) NOT NULL,
--destination_location VARCHAR(100) NOT NULL,
--initial_time DATETIME,
--pickup_time DATETIME, 
--destintation_time DATETIME,
--pickup_distance SMALLINT,
--destination_distance SMALLINT
);


 TABLE car(
Car_ID INTEGER PRIMARY KEY NOT NULL,
Model TEXT NOT NULL, --VARCHAR(20)
License_plate INTEGER NOT NULL, --VARCHAR(10)
Color TEXT NOT NULL, --VARCHAR(10) 
Mileage INTEGER NOT NULL, 
GPS_location TEXT NOT NULL, --VARCHAR(100)
State TEXT, --VARCHAR(15)
Battery_level INTEGER);


 TABLE charging_station(
Station_ID INTEGER PRIMARY KEY NOT NULL,
price INTEGER NOT NULL, -- SMALLINT
charging_time INTEGER NOT NULL, -- SMALLINT
GPS_location TEXT NOT NULL, -- VARCHAR(100)
Available_sockets INTEGER NOT NULL -- SMALLINT
);


--new table
-- TABLE socket(
--socket_id INT
--voltage SMALLINT,
--type VARCHAR(15),
--is_avaliable TINYINT
--);

 TABLE parts_provide( -- parts_provider
Provider_ID INTEGER PRIMARY KEY NOT NULL,
Name TEXT NOT NULL, --VARCHAR(15)
Address TEXT NOT NULL, --VARCHAR(150)
Phone INTEGER NOT NULL, --SMALLINT
parts_types TEXT -- wtf??? do we need this? Nope. Screw this shit
);


 TABLE car_part(
Part_ID INTEGER PRIMARY KEY NOT NULL, --do not specify that it is primary key here
Manufacturer_ID INTEGER NOT NULL, 
type TEXT NOT NULL, --VARCHAR(20)
Color TEXT NOT NULL, --VARCHAR(15)
Price TEXT NOT NULL, --SMALLINT
Provider TEXT NOT NULL -- do we need this???

--PRIMARY KEY(part_id, manufacturer_id)
);


 TABLE workshop(
Workshop_ID INTEGER PRIMARY KEY NOT NULL,
Work_time TEXT, --VARCHAR(30)
Address TEXT NOT NULL, --VARCHAR(150)
GPS_location TEXT NOT NULL --VARCHAR(100)
);
