
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



CREATE TABLE movies (id INTEGER PRIMARY KEY, name TEXT, release_year INTEGER);
INSERT INTO movies VALUES (1, "Avatar", 2009);
INSERT INTO movies VALUES (2, "Titanic", 1997);
INSERT INTO movies VALUES (3, "Star Wars: Episode IV - A New Hope", 1977);
INSERT INTO movies VALUES (4, "Shrek 2", 2004);
INSERT INTO movies VALUES (5, "The Lion King", 1994);
INSERT INTO movies VALUES (6, "Disney's Up", 2009);
 
select * from movies;
select * from movies where release_year >=2000 order by release_year