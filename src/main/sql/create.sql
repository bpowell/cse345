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
