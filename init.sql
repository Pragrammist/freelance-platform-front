CREATE TABLE users (userId INTEGER PRIMARY KEY, login TEXT, status TEXT, phoneNumber TEXT, passwordHash TEXT, profileType TEXT);

CREATE TABLE interests (interestId INTEGER PRIMARY KEY, name TEXT);

CREATE TABLE userInterests (
  userId INTEGER, 
  interestId INTEGER, 
  FOREIGN KEY (userId) REFERENCES users(userId),
  FOREIGN KEY (interestId) REFERENCES interests(interestId));