
CREATE TABLE fav_books(id INTEGER PRIMARY KEY, book_name TEXT, rating INT);

INSERT INTO fav_books VALUES(1, "Harry potter" , 9);
INSERT INTO fav_books VALUES(2, "Chandamama Kadalu" , 10);
INSERT INTO fav_books VALUES(3, "Naruto" , 9)

select * from fav_books



-- Grocery list bananas (4); dark chocolate (2); Peanut butter(1)

drop table Grocery
CREATE TABLE Grocery( ID INTEGER PRIMARY KEY  ,name TEXT , quantity INT, aisle INT);


-- id is the unique identifier here which is why we used a primary key for ID 
INSERT INTO Grocery VALUES (1, 'Bananas' , 4,5);
INSERT INTO Grocery VALUES (2, 'dark chocolate' , 2,7);
INSERT INTO Grocery VALUES (3, 'peanut butter' , 1,8);
INSERT INTO Grocery VALUES (4, 'ice cream' , 3,1);
INSERT INTO Grocery VALUES (5, 'cherries' , 5,3);
INSERT INTO Grocery VALUES (6, 'chocolate syrup' , 2,2);

select * from Grocery where aisle >5 ORDER BY aisle;

-- group by 
select aisle, sum(quantity) from Grocery GROUP BY aisle; 

CREATE TABLE movies (id INTEGER PRIMARY KEY, name TEXT, release_year INTEGER);
INSERT INTO movies VALUES (1, "Avatar", 2009);
INSERT INTO movies VALUES (2, "Titanic", 1997);
INSERT INTO movies VALUES (3, "Star Wars: Episode IV - A New Hope", 1977);
INSERT INTO movies VALUES (4, "Shrek 2", 2004);
INSERT INTO movies VALUES (5, "The Lion King", 1994);
INSERT INTO movies VALUES (6, "Disney's Up", 2009);
 
select * from movies;
select * from movies where release_year >=2000 order by release_year


-- sample table with aggregate function


-- create a cloth store 
-- with 5 columns as tops,pants, scarfs, id,quantity
create table cloth(id integer primary key, tops text, pants text, scrafs text, price integer);


insert into cloth values(1, 'blue top', 'blue jeans', 'hermes scarf', 15);

insert into cloth values(2, 'pink top', 'pink jeans', 'pink scarf', 14);
insert into cloth values(3, 'yellow top', 'yellow jeans', 'pink scarf', 13);
insert into cloth values(4, 'purple top', 'purple jeans', 'pink scarf', 12);
insert into cloth values(5, 'violet top', 'violet jeans', 'pink scarf', 11);
insert into cloth values(6, 'black top', 'black jeans', 'pink scarf', 10);
insert into cloth values(7, 'cream top', 'cream jeans', 'pink scarf', 9);
insert into cloth values(8, 'tomato top', 'tomato jeans', 'pink scarf', 8);
insert into cloth values(9, 'red top', 'red jeans', 'pink scarf', 7);
insert into cloth values(10, 'marron top', 'marron jeans', 'pink scarf', 6);
insert into cloth values(11, 'greeen top', 'greeen jeans', 'pink scarf', 5);
insert into cloth values(12, 'kale top', 'kale jeans', 'pink scarf', 4);
insert into cloth values(13, 'jio top', 'jio jeans', 'pink scarf', 3);
insert into cloth values(14, 'nello top', 'nello jeans', 'pink scarf', 2);
insert into cloth values(15,'njiio top', 'njiio jeans', 'pink scarf', 1);

select * from cloth;
select sum(price) from cloth;
select tops from cloth order by price;
select id,sum(price) from cloth group by id order by price;
select * from cloth order by price >=10;

-- another method
CREATE TABLE exercise_logs
    (id INTEGER PRIMARY KEY AUTO_INCREMENT,
    type TEXT,
    minutes INTEGER, 
    calories INTEGER,
    heart_rate INTEGER);


INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("biking", 30, 100, 110);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("biking", 10, 30, 105);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("dancing", 15, 200, 120);

SELECT * FROM exercise_logs WHERE calories > 50 ORDER BY calories;

/* AND */
SELECT * FROM exercise_logs WHERE calories > 50 AND minutes < 30;

/* OR */
SELECT * FROM exercise_logs WHERE calories > 50 OR heart_rate > 100;


-- querying 