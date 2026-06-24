CREATE TABLE User (
    userID INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE Place (
    placeID INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    description TEXT
);

CREATE TABLE Event (
    eventID INT PRIMARY KEY AUTO_INCREMENT,
    placeID INT,
    name VARCHAR(100),
    eventDate DATE,
    FOREIGN KEY(placeID)
    REFERENCES Place(placeID)
);