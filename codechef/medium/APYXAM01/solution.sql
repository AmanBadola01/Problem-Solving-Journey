-- write your code here

create table Dogs(
    dog_id INT primary key, 
    name varchar(50) unique,
    breed varchar(50),
    age int check(age >= 1),
    weight_kg float,
    check(breed IN ('Beagle', 'Labrador', 'Poodle', 'Shih Tzu'))
    );

insert into Dogs 
Values (1, 'Buddy', 'Labrador', 3, 30.5),
       (2, 'Lucy', 'Poodle', 5, 6.8),
       (3, 'Max', 'Beagle', 2, 11.2);