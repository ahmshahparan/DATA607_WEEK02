CREATE DATABASE IF NOT EXISTS moviesta;

USE moviesta;

CREATE TABLE IF NOT EXISTS movies (
  movieID  INT auto_increment unique,
  movieName     VARCHAR(255) not null,
  PRIMARY KEY (movieID)
);

INSERT INTO `movies` (`movieID`, `movieName`) VALUES ('1', 'Dunkirk');
INSERT INTO `movies` (`movieID`, `movieName`) VALUES ('2', 'The Shape of Water');
INSERT INTO `movies` (`movieID`, `movieName`) VALUES ('3', 'It');
INSERT INTO `movies` (`movieID`, `movieName`) VALUES ('4', 'Logan');
INSERT INTO `movies` (`movieID`, `movieName`) VALUES ('5', 'The Post');
INSERT INTO `movies` (`movieID`, `movieName`) VALUES ('6', 'Call Me by Your Name');

CREATE TABLE IF NOT EXISTS users (
  userID        INT auto_increment unique,
  userName  VARCHAR(255) not null,
  PRIMARY KEY (userID)
);

INSERT INTO `users` (`userID`, `userName`) VALUES ('1', 'Hoshne Jahan');
INSERT INTO `users` (`userID`, `userName`) VALUES ('2', 'Mike Jones');
INSERT INTO `users` (`userID`, `userName`) VALUES ('3', 'Maria Garcia');
INSERT INTO `users` (`userID`, `userName`) VALUES ('4', 'Sarah Smith');
INSERT INTO `users` (`userID`, `userName`) VALUES ('5', 'Nazrum Jahan');

CREATE TABLE IF NOT EXISTS ratings (
  ratingID  INT auto_increment unique,
  movie     INT not null,
  user       INT not null,
  rating      INT not null,
  comment VARCHAR(255),
  PRIMARY KEY (ratingID),
  CONSTRAINT `movie` FOREIGN KEY (`movie`) REFERENCES `moviesta`.`movies` (`movieID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user` FOREIGN KEY (`user`) REFERENCES `moviesta`.`users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE
  );
  
  INSERT INTO `ratings` (`ratingID`, `movie`, `user`, `rating`, `comment`) VALUES ('1', '1', '1', '5', 'Amazing Movie!');
  INSERT INTO `ratings` (`ratingID`, `movie`, `user`, `rating`, `comment`) VALUES ('2', '1', '2', '4', '');
  INSERT INTO `ratings` (`ratingID`, `movie`, `user`, `rating`, `comment`) VALUES ('3', '2', '3', '5', 'Superb!');
  INSERT INTO `ratings` (`ratingID`, `movie`, `user`, `rating`, `comment`) VALUES ('4', '2', '4', '5', 'Best!');
  INSERT INTO `ratings` (`ratingID`, `movie`, `user`, `rating`, `comment`) VALUES ('5', '3', '5', '3', 'Incredible!');
  INSERT INTO `ratings` (`ratingID`, `movie`, `user`, `rating`, `comment`) VALUES ('6', '3', '1', '5', 'Amazing one!');
  INSERT INTO `ratings` (`ratingID`, `movie`, `user`, `rating`, `comment`) VALUES ('7', '4', '2', '3', 'Wow!');
  INSERT INTO `ratings` (`ratingID`, `movie`, `user`, `rating`, `comment`) VALUES ('8', '4', '3', '5', 'Satisfied!');
  INSERT INTO `ratings` (`ratingID`, `movie`, `user`, `rating`, `comment`) VALUES ('9', '5', '4', '4', 'Tom is best!');
  INSERT INTO `ratings` (`ratingID`, `movie`, `user`, `rating`, `comment`) VALUES ('10', '5', '5', '5', 'True story!');
  INSERT INTO `ratings` (`ratingID`, `movie`, `user`, `rating`, `comment`) VALUES ('11', '6', '1', '4', 'Magnificant!');
  INSERT INTO `ratings` (`ratingID`, `movie`, `user`, `rating`, `comment`) VALUES ('12', '6', '2', '5', 'Worth it!');
