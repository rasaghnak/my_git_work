-- Grocery list bananas (4); dark chocolate (2); Peanut butter(1)


CREATE TABLE Grocery( ID INTEGER PRIMARY KEY  ,name TEXT , quantity INT);


-- id is the unique identifier here which is why we used a primary key for ID 
INSERT INTO Grocery VALUES (1, 'Bananas' , 4);
INSERT INTO Grocery VALUES (2, 'dark chocolate' , 2);
INSERT INTO Grocery VALUES (3, 'peanut butter' , 1);

select * from Grocery



CREATE TABLE fav_books(id INTEGER PRIMARY KEY, book_name TEXT, rating INT);

INSERT INTO fav_books VALUES(1, "Harry potter" , 9);
INSERT INTO fav_books VALUES(2, "Chandamama Kadalu" , 10);
INSERT INTO fav_books VALUES(3, "Naruto" , 9)

select * from fav_books