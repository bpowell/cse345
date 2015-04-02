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
    num_sold        integer
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
