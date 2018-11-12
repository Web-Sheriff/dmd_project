PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE car_order(
order_id integer primary key not null,
cost smallint not null,
initial_location varchar(100) not null,
pickup_location varchar(100) not null,
destination_location varchar(100) not null,
initial_time datetime,
pickup_time datetime,
destination_time datetime,
pickup_distance smallint,
destination_distance smallint);
CREATE TABLE charging_station(
station_id integer primary key not null,
price smallint not null,
charging_time smallint not null,
gps_location varchar(100) not null,
available_sockets smallint not null);
CREATE TABLE parts_provider(
provider_id integer primary key not null,
name varchar(15) not null,
address varchar(150) not null,
phone smallint not null);
CREATE TABLE car_part(
part_id integer not null,
manufacturer_id integer not null,
type varchar(20) not null,
color varchar(15) not null,
price smallint not null,
provider varchar(100) not null,
primary key (part_id, manufacturer_id)
);
CREATE TABLE workshop(
workshop_id integer primary key not null,
work_time varchar(30),
address varchar(150) not null,
gps_location varchar(100) not null);
CREATE TABLE customer(
customer_id INTEGER PRIMARY KEY NOT NULL,
username VARCHAR(20) NOT NULL,
first_name varchar(15) not null,
second_name varchar(15) not null,
residence_address char(100),
phone smallint not null,
email varchar(30) not null,
gps_location varchar(100) not null);
CREATE TABLE bank_card(
number integer primary key not null,
expire date not null,
security_code smallint not null);
CREATE TABLE car(
car_id integer primary key not null,
model varchar(20) not null,
license_plate varchar(10) not null,
color varchar(10) not null,
mileage integer not null,
gps_location varchar(100) not null,
state varchar(15),
battery_level integer);
CREATE TABLE socket(
socket_id integer primary key not null,
voltage smallint,
type varchar(15),
is_available tinyint);
COMMIT;
