create table ingredient_type (
    id          serial primary key,
    name        varchar(100) NOT NULL
)
;

create table meal_type (
    id          serial primary key,
    name        varchar(100) NOT NULL
)
;

create table ingredient (
    id          serial primary key,
    name        varchar(100) NOT NULL,
    quantity    integer NOT NULL,
    type_id     integer references ingredient_type(id),
    bought_date varchar(100) NOT NULL
)
;

create table requirements (
    id              serial primary key,
    recipes_id      integer NOT NULL,
    ingredient_id   integer references ingredient(id)
)
;

create table recipes (
    id              serial primary key,
    name            varchar(100) NOT NULL,
    meal_id         integer references meal_type(id),
    requirements_id integer references requirements(id),
    stars           integer,
    num_sold        integer,
    cost            integer
)
;

create table employee (
    id      serial primary key,
    name    varchar(100) NOT NULL,
    address varchar(100) NOT NULL,
    city    varchar(100) NOT NULL,
    state   varchar(2) NOT NULL,
    wage    integer NOT NULL
)
;   

insert into meal_type (name) values('Breakfast');
insert into meal_type (name) values('Lunch');
insert into meal_type (name) values('Dinner');
insert into meal_type (name) values('Dessert');
insert into meal_type (name) values('Appetizer');


insert into ingredient_type (name) values('Meat');
insert into ingredient_type (name) values('Grain');
insert into ingredient_type (name) values('Dairy');
insert into ingredient_type (name) values('Vegetable');
insert into ingredient_type (name) values('Fruit');
insert into ingredient_type (name) values('Other');


insert into ingredient (name, quantity, type_id, bought_date) values('Alfredo Sauce',10,6,'2/15/15');
insert into ingredient (name, quantity, type_id, bought_date) values('Apples',30,5,'3/20/15');
insert into ingredient (name, quantity, type_id, bought_date) values('Bacon', 20, 1, '3/15/15');
insert into ingredient (name, quantity, type_id, bought_date) values('Beef',18,1,'3/26/15');
insert into ingredient (name, quantity, type_id, bought_date) values('Bread',30,2,'3/25/15');
insert into ingredient (name, quantity, type_id, bought_date) values('Broth',9,6,'2/11/15');
insert into ingredient (name, quantity, type_id, bought_date) values('Butter',12,3,'3/12/15');
insert into ingredient (name, quantity, type_id, bought_date) values('Cheese',16,3,'3/12/15');
insert into ingredient (name, quantity, type_id, bought_date) values('Cherries',5,5,'3/21/15');
insert into ingredient (name, quantity, type_id, bought_date) values('Chicken',20,1,'3/26/15');
insert into ingredient (name, quantity, type_id, bought_date) values('Chocolate',12,6,'2/11/15');
insert into ingredient (name, quantity, type_id, bought_date) values('Dressing',11,6,'2/11/15');
insert into ingredient (name, quantity, type_id, bought_date) values('Eggs',24,3,'3/20/15');
insert into ingredient (name, quantity, type_id, bought_date) values('Fish',9,1,'3/26/15');
insert into ingredient (name, quantity, type_id, bought_date) values('Flour',10,2,'2/1/15');
insert into ingredient (name, quantity, type_id, bought_date) values('Ham',11,1,'3/26/15');
insert into ingredient (name, quantity, type_id, bought_date) values('Ice Cream',19,3,'3/2/15');
insert into ingredient (name, quantity, type_id, bought_date) values('Lettuce',22,4,'3/20/15');
insert into ingredient (name, quantity, type_id, bought_date) values('Lobster',4,1,'3/26/15');
insert into ingredient (name, quantity, type_id, bought_date) values('Milk',10,3,'3/20/15');
insert into ingredient (name, quantity, type_id, bought_date) values('Noodles',17,2,'2/28/15');
insert into ingredient (name, quantity, type_id, bought_date) values('Pepperoni',20,1,'2/28/15');
insert into ingredient (name, quantity, type_id, bought_date) values('Pie Crust',8,2,'3/15/15');
insert into ingredient (name, quantity, type_id, bought_date) values('Potatoes',25,6,'3/15/15');
insert into ingredient (name, quantity, type_id, bought_date) values('Seasonings',33,6,'1/20/15');
insert into ingredient (name, quantity, type_id, bought_date) values('Sugar',22,6,'1/20/15');
insert into ingredient (name, quantity, type_id, bought_date) values('Tomato',19,4,'3/25/15');
insert into ingredient (name, quantity, type_id, bought_date) values('Tomato Sauce',11,6,'3/1/15');


insert into requirements (recipes_id, ingredient_id) values(1,24);
insert into requirements (recipes_id, ingredient_id) values(2,10);
insert into requirements (recipes_id, ingredient_id) values(2,25);
insert into requirements (recipes_id, ingredient_id) values(3,5);
insert into requirements (recipes_id, ingredient_id) values(3,8);
insert into requirements (recipes_id, ingredient_id) values(4,7);
insert into requirements (recipes_id, ingredient_id) values(4,13);
insert into requirements (recipes_id, ingredient_id) values(4,15);
insert into requirements (recipes_id, ingredient_id) values(4,20);
insert into requirements (recipes_id, ingredient_id) values(4,26);
insert into requirements (recipes_id, ingredient_id) values(5,7);
insert into requirements (recipes_id, ingredient_id) values(5,13);
insert into requirements (recipes_id, ingredient_id) values(5,15);
insert into requirements (recipes_id, ingredient_id) values(5,20);
insert into requirements (recipes_id, ingredient_id) values(5,26);
insert into requirements (recipes_id, ingredient_id) values(6,3);
insert into requirements (recipes_id, ingredient_id) values(6,8);
insert into requirements (recipes_id, ingredient_id) values(6,13);
insert into requirements (recipes_id, ingredient_id) values(7,24);
insert into requirements (recipes_id, ingredient_id) values(8,5);
insert into requirements (recipes_id, ingredient_id) values(8,13);
insert into requirements (recipes_id, ingredient_id) values(8,25);
insert into requirements (recipes_id, ingredient_id) values(9,3);
insert into requirements (recipes_id, ingredient_id) values(9,5);
insert into requirements (recipes_id, ingredient_id) values(9,18);
insert into requirements (recipes_id, ingredient_id) values(9,27);
insert into requirements (recipes_id, ingredient_id) values(10,5);
insert into requirements (recipes_id, ingredient_id) values(10,8);
insert into requirements (recipes_id, ingredient_id) values(11,6);
insert into requirements (recipes_id, ingredient_id) values(11,10);
insert into requirements (recipes_id, ingredient_id) values(11,21);
insert into requirements (recipes_id, ingredient_id) values(11,25);
insert into requirements (recipes_id, ingredient_id) values(13,5);
insert into requirements (recipes_id, ingredient_id) values(13,8);
insert into requirements (recipes_id, ingredient_id) values(13,18);
insert into requirements (recipes_id, ingredient_id) values(14,4);
insert into requirements (recipes_id, ingredient_id) values(14,5);
insert into requirements (recipes_id, ingredient_id) values(14,8);
insert into requirements (recipes_id, ingredient_id) values(14,18);
insert into requirements (recipes_id, ingredient_id) values(14,27);
insert into requirements (recipes_id, ingredient_id) values(15,21);
insert into requirements (recipes_id, ingredient_id) values(15,28);
insert into requirements (recipes_id, ingredient_id) values(16,4);
insert into requirements (recipes_id, ingredient_id) values(16,25);
insert into requirements (recipes_id, ingredient_id) values(17,5);
insert into requirements (recipes_id, ingredient_id) values(17,8);
insert into requirements (recipes_id, ingredient_id) values(17,22);
insert into requirements (recipes_id, ingredient_id) values(17,28);
insert into requirements (recipes_id, ingredient_id) values(18,10);
insert into requirements (recipes_id, ingredient_id) values(19,14);
insert into requirements (recipes_id, ingredient_id) values(19,24);
insert into requirements (recipes_id, ingredient_id) values(20,7);
insert into requirements (recipes_id, ingredient_id) values(20,19);
insert into requirements (recipes_id, ingredient_id) values(21,17);
insert into requirements (recipes_id, ingredient_id) values(22,2);
insert into requirements (recipes_id, ingredient_id) values(22,23);
insert into requirements (recipes_id, ingredient_id) values(22,26);
insert into requirements (recipes_id, ingredient_id) values(23,7);
insert into requirements (recipes_id, ingredient_id) values(23,11);
insert into requirements (recipes_id, ingredient_id) values(23,13);
insert into requirements (recipes_id, ingredient_id) values(23,15);
insert into requirements (recipes_id, ingredient_id) values(23,17);


insert into recipes (name, meal_id, requirements_id, stars, num_sold, cost) values('French Fries',5,1,4,500,5);
insert into recipes (name, meal_id, requirements_id, stars, num_sold, cost) values('Wings',5,2,4,300,5);
insert into recipes (name, meal_id, requirements_id, stars, num_sold, cost) values('Mozzarella Sticks',5,3,5,600,5);
insert into recipes (name, meal_id, requirements_id, stars, num_sold, cost) values('Pancakes',1,4,3,200,6);
insert into recipes (name, meal_id, requirements_id, stars, num_sold, cost) values('Waffles',1,5,5,300,5);
insert into recipes (name, meal_id, requirements_id, stars, num_sold, cost) values('Omelette',1,6,4,400,7);
insert into recipes (name, meal_id, requirements_id, stars, num_sold, cost) values('Hashbrowns',1,7,3,200,4);
insert into recipes (name, meal_id, requirements_id, stars, num_sold, cost) values('French Toast',1,8,5,450,7);
insert into recipes (name, meal_id, requirements_id, stars, num_sold, cost) values('BLT Sandwich',2,9,4,500,8);
insert into recipes (name, meal_id, requirements_id, stars, num_sold, cost) values('Grilled Cheese',2,10,5,500,7);
insert into recipes (name, meal_id, requirements_id, stars, num_sold, cost) values('SQL Soup',2,11,5,600,6);
insert into recipes (name, meal_id, requirements_id, stars, num_sold, cost) values('Tomato Soup',2,12,5,630,5);
insert into recipes (name, meal_id, requirements_id, stars, num_sold, cost) values('Caesar Salad',2,13,4,200,8);
insert into recipes (name, meal_id, requirements_id, stars, num_sold, cost) values('Boolean Burger',3,14,5,350,10);
insert into recipes (name, meal_id, requirements_id, stars, num_sold, cost) values('Pasta',3,15,4,321,9);
insert into recipes (name, meal_id, requirements_id, stars, num_sold, cost) values('Primary Key Prime Rib',3,16,5,204,18);
insert into recipes (name, meal_id, requirements_id, stars, num_sold, cost) values('Pizza',3,17,4,405,10);
insert into recipes (name, meal_id, requirements_id, stars, num_sold, cost) values('Chicken Tenders',3,18,3,122,7);
insert into recipes (name, meal_id, requirements_id, stars, num_sold, cost) values('Fish and Chips',3,19,4,400,10);
insert into recipes (name, meal_id, requirements_id, stars, num_sold, cost) values('Lobster',3,20,5,255,17);
insert into recipes (name, meal_id, requirements_id, stars, num_sold, cost) values('Vanilla Ice Cream',4,21,3,394,3);
insert into recipes (name, meal_id, requirements_id, stars, num_sold, cost) values('Apple Pie',4,22,5,600,5);
insert into recipes (name, meal_id, requirements_id, stars, num_sold, cost) values('Brownie Supreme',4,23,5,402,5);

insert into employee (name, address, city, state, wage) values('Brandon', '123 Main', 'Rochester', 'MI', 500);
insert into employee (name, address, city, state, wage) values('Rachel', '123 Main', 'Rochester', 'MI', 500);
insert into employee (name, address, city, state, wage) values('Zack', '123 Main', 'Rochester', 'MI', 500);
insert into employee (name, address, city, state, wage) values('Steve', '123 Main', 'Rochester', 'MI', 500);
insert into employee (name, address, city, state, wage) values('Kaseb', '123 Main', 'Rochester', 'MI', 500);
