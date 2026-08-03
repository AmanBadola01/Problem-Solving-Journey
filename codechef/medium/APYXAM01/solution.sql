-- write your code here

create table Dogs(
    dog_id int primary key, 
    name text unique,
    breed text check (breed in ('Beagle', 'Labrador', 'Poodle', 'Shih Tzu')),
    age int check(age>=1),
    weight_kg float
);

insert into Dogs
values
    (1, "Buddy", "Labrador", 3, 30.5),
    (2, "Lucy", "Poodle", 5, 6.8),
    (3, "Max", 'Beagle', 2, 11.2);