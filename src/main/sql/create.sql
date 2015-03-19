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
    type_id     integer references ingredient_type(id)
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
    requirements_id integer references requirements(id)
)
;
