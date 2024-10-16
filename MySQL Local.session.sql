-- Grocery list bananas (4); dark chocolate (2); Peanut butter(1)


CREATE TABLE Grocery( ID INTEGER PRIMARY KEY  ,name TEXT , quantity INT);

INSERT INTO Grocery VALUES (1, 'Bananas' , 4);
INSERT INTO Grocery VALUES (2, 'dark chocolate' , 2);
INSERT INTO Grocery VALUES (3, 'peanut butter' , 1);

select * from Grocery