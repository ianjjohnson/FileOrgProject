drop database if exists project;
create database project;
use project;

create table Product(
product_id int auto_increment primary key,
name varchar(255),
version varchar(255),
status enum('ready', 'usable', 'not-ready')
);

create table Person(
person_id int auto_increment primary key,
name varchar(255),
start_date DATE,
seniority enum('newbie', 'junior', 'senior'),
manager_id int,
foreign key (manager_id) references Person(person_id)
);

create table Component(
component_id int auto_increment primary key,
owner_id int,
name varchar(255),
version varchar(255),
language enum('C', 'C++','C#','Java','PHP','Python','assembly'),
status enum('ready', 'usable', 'not-ready'),
size int,
foreign key (owner_id) references Person(person_id)
);

create table Dependency(
product_id int,
component_id int,
primary key (product_id, component_id),
foreign key (product_id) references Product(product_id),
foreign key (component_id) references Component(component_id)
);

create table Inspection(
inspection_id int auto_increment primary key,
performer_id int,
component_id int,
score int,
description varchar(1024),
inspection_date Date,
foreign key (performer_id) references Person(person_id),
foreign key (component_id) references Component(component_id)
);
