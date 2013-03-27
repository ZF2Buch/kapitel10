PRAGMA foreign_keys = OFF;
BEGIN TRANSACTION;
DROP TABLE pizzas;
DROP TABLE crusts;
DROP TABLE toppings;
DROP TABLE pizzas_toppings;
CREATE TABLE pizzas (id integer primary key, name varchar(32), price float, crust_id integer, FOREIGN KEY(crust_id) REFERENCES crusts(id));
INSERT INTO "pizzas" VALUES(1,'Pizza Salami',4.95,1);
INSERT INTO "pizzas" VALUES(2,'Pizza Salami Vollkorn',5.95,2);
INSERT INTO "pizzas" VALUES(3,'Pizza Schinken',4.95,1);
INSERT INTO "pizzas" VALUES(4,'Pizza Schinken Vollkorn',5.95,2);
INSERT INTO "pizzas" VALUES(5,'Pizza Melone',6.95,1);
INSERT INTO "pizzas" VALUES(6,'Pizza Melone Vollkorn',7.95,2);
INSERT INTO "pizzas" VALUES(7,'Pizza Speziale',6.95,1);
INSERT INTO "pizzas" VALUES(8,'Pizza Speziale Vollkorn',7.95,2);
INSERT INTO "pizzas" VALUES(9,'Pizza Thunfisch',7.95,1);
INSERT INTO "pizzas" VALUES(10,'Pizza Thunfisch Vollkorn',8.95,2);
INSERT INTO "pizzas" VALUES(11,'Pizza Spinaci',7.95,1);
INSERT INTO "pizzas" VALUES(12,'Pizza Spinaci Vollkorn',8.95,2);
INSERT INTO "pizzas" VALUES(13,'Pizza Mexicana',8.95,1);
INSERT INTO "pizzas" VALUES(14,'Pizza Mexicana Vollkorn',9.95,2);
CREATE TABLE crusts (id integer primary key, name varchar(32), costs float);
INSERT INTO "crusts" VALUES(1,'Pizzaboden aus Weizenmehl',2.0);
INSERT INTO "crusts" VALUES(2,'Pizzaboden aus Vollkornmehl',2.5);
CREATE TABLE toppings (id integer primary key, name varchar(32), costs float);
INSERT INTO "toppings" VALUES(1,'Tomatenpampe',0.5);
INSERT INTO "toppings" VALUES(2,'Käse',0.5);
INSERT INTO "toppings" VALUES(3,'Salami',1.0);
INSERT INTO "toppings" VALUES(4,'Schinken',1.0);
INSERT INTO "toppings" VALUES(5,'Ananas',1.5);
INSERT INTO "toppings" VALUES(6,'Champignons',1.0);
INSERT INTO "toppings" VALUES(7,'Melone',1.5);
INSERT INTO "toppings" VALUES(8,'Zwiebeln',0.5);
INSERT INTO "toppings" VALUES(9,'Thunfisch',2.0);
INSERT INTO "toppings" VALUES(10,'Spinat',1.5);
INSERT INTO "toppings" VALUES(11,'Peperoni',1.0);
INSERT INTO "toppings" VALUES(12,'Feta',1.5);
INSERT INTO "toppings" VALUES(13,'Hackfleisch',2.0);
INSERT INTO "toppings" VALUES(14,'Mais',1.0);
CREATE TABLE pizzas_toppings (pizza_id integer, topping_id integer, FOREIGN KEY(pizza_id) REFERENCES pizzas(id), FOREIGN KEY(topping_id) REFERENCES toppings(id));
INSERT INTO "pizzas_toppings" VALUES(1,1);
INSERT INTO "pizzas_toppings" VALUES(1,2);
INSERT INTO "pizzas_toppings" VALUES(1,3);
INSERT INTO "pizzas_toppings" VALUES(2,1);
INSERT INTO "pizzas_toppings" VALUES(2,2);
INSERT INTO "pizzas_toppings" VALUES(2,3);
INSERT INTO "pizzas_toppings" VALUES(3,1);
INSERT INTO "pizzas_toppings" VALUES(3,2);
INSERT INTO "pizzas_toppings" VALUES(3,4);
INSERT INTO "pizzas_toppings" VALUES(4,1);
INSERT INTO "pizzas_toppings" VALUES(4,2);
INSERT INTO "pizzas_toppings" VALUES(4,4);
INSERT INTO "pizzas_toppings" VALUES(5,1);
INSERT INTO "pizzas_toppings" VALUES(5,2);
INSERT INTO "pizzas_toppings" VALUES(5,4);
INSERT INTO "pizzas_toppings" VALUES(5,7);
INSERT INTO "pizzas_toppings" VALUES(6,1);
INSERT INTO "pizzas_toppings" VALUES(6,2);
INSERT INTO "pizzas_toppings" VALUES(6,4);
INSERT INTO "pizzas_toppings" VALUES(6,7);
INSERT INTO "pizzas_toppings" VALUES(7,1);
INSERT INTO "pizzas_toppings" VALUES(7,2);
INSERT INTO "pizzas_toppings" VALUES(7,3);
INSERT INTO "pizzas_toppings" VALUES(7,4);
INSERT INTO "pizzas_toppings" VALUES(7,6);
INSERT INTO "pizzas_toppings" VALUES(8,1);
INSERT INTO "pizzas_toppings" VALUES(8,2);
INSERT INTO "pizzas_toppings" VALUES(8,3);
INSERT INTO "pizzas_toppings" VALUES(8,4);
INSERT INTO "pizzas_toppings" VALUES(8,6);
INSERT INTO "pizzas_toppings" VALUES(9,1);
INSERT INTO "pizzas_toppings" VALUES(9,2);
INSERT INTO "pizzas_toppings" VALUES(9,8);
INSERT INTO "pizzas_toppings" VALUES(9,9);
INSERT INTO "pizzas_toppings" VALUES(10,1);
INSERT INTO "pizzas_toppings" VALUES(10,2);
INSERT INTO "pizzas_toppings" VALUES(10,8);
INSERT INTO "pizzas_toppings" VALUES(10,9);
INSERT INTO "pizzas_toppings" VALUES(11,1);
INSERT INTO "pizzas_toppings" VALUES(11,2);
INSERT INTO "pizzas_toppings" VALUES(11,10);
INSERT INTO "pizzas_toppings" VALUES(11,12);
INSERT INTO "pizzas_toppings" VALUES(12,1);
INSERT INTO "pizzas_toppings" VALUES(12,2);
INSERT INTO "pizzas_toppings" VALUES(12,10);
INSERT INTO "pizzas_toppings" VALUES(12,12);
INSERT INTO "pizzas_toppings" VALUES(13,1);
INSERT INTO "pizzas_toppings" VALUES(13,2);
INSERT INTO "pizzas_toppings" VALUES(13,8);
INSERT INTO "pizzas_toppings" VALUES(13,11);
INSERT INTO "pizzas_toppings" VALUES(13,13);
INSERT INTO "pizzas_toppings" VALUES(13,14);
INSERT INTO "pizzas_toppings" VALUES(14,1);
INSERT INTO "pizzas_toppings" VALUES(14,2);
INSERT INTO "pizzas_toppings" VALUES(14,8);
INSERT INTO "pizzas_toppings" VALUES(14,11);
INSERT INTO "pizzas_toppings" VALUES(14,13);
INSERT INTO "pizzas_toppings" VALUES(14,14);
CREATE INDEX pizzas_crust_id on pizzas(crust_id);
CREATE INDEX pizzas_toppings_pizza_id on pizzas_toppings(pizza_id);
CREATE INDEX pizzas_toppings_topping_id on pizzas_toppings(topping_id);
COMMIT;
PRAGMA foreign_keys = ON;
