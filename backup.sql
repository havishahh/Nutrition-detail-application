create database food_nutrition;

use food_nutrition;

create table food_categories (
    id int auto_increment primary key,
    name varchar(255) not null
);

create table food_items (
    id int auto_increment primary key,
    name varchar(255) not null,
    category_id int,
    foreign key (category_id) references food_categories(id)
);

create table nutritional_info (
    id int auto_increment primary key,
    item_id int,
    calories float,
    protein float,
    fat float,
    carbohydrates float,
    foreign key (item_id) references food_items(id)
);

insert into food_categories (name) values ('fruits'),('vegetables'),('dairy'),('grains');

insert into food_items (name, category_id) values
    ('apple', 1),
    ('banana', 1),
    ('orange', 1),
    ('strawberry', 1),
    ('grapes', 1),
    ('watermelon', 1),
    ('kiwi', 1),
    ('peach', 1),
    ('pear', 1),
    ('plum', 1);

insert into food_items (name, category_id) values
    ('spinach', 2),
    ('carrot', 2),
    ('broccoli', 2),
    ('cucumber', 2),
    ('tomato', 2),
    ('bell pepper', 2),
    ('zucchini', 2),
    ('aubergine', 2),
    ('lettuce', 2),
    ('cabbage', 2);

insert into food_items (name, category_id) values
    ('milk', 3),
    ('cheese', 3),
    ('yogurt', 3),
    ('cottage cheese', 3),
    ('soy milk', 3),
    ('almond milk', 3),
    ('coconut milk', 3),
    ('oat milk', 3),
    ('cashew milk', 3),
    ('rice milk', 3);

insert into food_items (name, category_id) values
    ('bread', 4),
    ('rice', 4),
    ('pasta', 4),
    ('quinoa', 4),
    ('oats', 4),
    ('barley', 4),
    ('couscous', 4),
    ('bulgur', 4),
    ('farro', 4),
    ('millet', 4);

    insert into nutritional_info(item_id,calories,protein,fat,carbohydrates) values
    (1,52,0.3,0.2,13.8), --apple
    (2, 89, 1.1, 0.3, 22.8), -- Banana
    (3, 43, 1, 0.1, 8.3), -- Orange
    (4, 32, 0.7, 0.3, 7.7), -- Strawberry
    (5, 69, 0.6, 0.2, 18.1), -- Grapes
    (6, 30, 0.6, 0.2, 7.6), -- Watermelon
    (7, 41, 0.8, 0.4, 10.2), -- Kiwi
    (8, 39, 0.9, 0.3, 9.5), -- Peach
    (9, 57, 0.4, 0.1, 15), -- Pear
    (10, 46, 0.7, 0.3, 11.4), -- Plum
    (11, 23, 2.9, 0.4, 3.6), -- Spinach
    (12, 41, 0.9, 0.2, 9.6), -- Carrot
    (13, 55, 3.7, 0.6, 11.2), -- Broccoli
    (14, 16, 0.7, 0.1, 3.6), -- Cucumber
    (15, 18, 0.9, 0.2, 3.9), -- Tomato
    (16, 31, 1, 0.3, 6), -- Bell Pepper
    (17, 17, 1.2, 0.3, 3.1), -- Zucchini
    (18, 25, 1, 0.2, 5.9), -- Aubergine (Eggplant)
    (19, 15, 1.4, 0.2, 2.9), -- Lettuce
    (20, 25, 1.3, 0.1, 5.8), -- Cabbage
     (21, 42, 3.2, 1, 5), -- Milk
    (22, 402, 25, 33, 1.3), -- Cheese
    (23, 61, 3.5, 3.3, 4.7), -- Yogurt
    (24, 98, 11, 4.3, 3.4), -- Cottage Cheese
    (25, 33, 3.3, 1.7, 2), -- Soy Milk
    (26, 13, 0.5, 1.1, 0.4), -- Almond Milk
    (27, 230, 2.3, 24, 2.1), -- Coconut Milk
    (28, 50, 1, 2, 7), -- Oat Milk
    (29, 27, 0.5, 2.2, 1), -- Cashew Milk
    (30, 47, 0.5, 1.5, 8.3), -- Rice Milk
    (31, 265, 9, 2, 49), -- Bread
    (32, 130, 2.7, 0.3, 28.2), -- Rice
    (33, 131, 5, 0.6, 25), -- Pasta
    (34, 120, 4.4, 1.9, 21.3), -- Quinoa
    (35, 379, 13, 6.9, 67), -- Oats
    (36, 123, 2.3, 0.4, 28.4), -- Barley
    (37, 112, 3.8, 0.3, 23.2), -- Couscous
    (38, 83, 3.1, 0.2, 18.6), -- Bulgur
    (39, 339, 11.8, 2.3, 71), -- Farro
    (40, 378, 11, 4, 73); -- Millet

