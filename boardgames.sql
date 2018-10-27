-- create and select the database
CREATE DATABASE boardgames;
USE boardgames;

-- create the MyCollection table
CREATE TABLE Game (
   ID				int					primary key		auto_increment,
   code				varchar(10)			not null		unique,
   gameName			varchar(255)		not null,
   DesignerID		varchar(255)		not null,
   playerCountMin	int(255)			not null,
   playercountMax	int(255)			not null,
   gameGenreID		varchar(255)		not null,
   playtime			varchar(255)		not null,
   foreign key (DesignerID) references Designer (DesignerID),
   foreign key (gameGenreID) references gameGenre (gameGenreID)
   );
   
-- create the Designer table
CREATE TABLE Designer (
   DesignerID		int					primary key		auto_increment,
   designerName		varchar(255)		not null		unique
   );
   
-- create the gameGenre table
CREATE TABLE gameGenre (
   gameGenreID		int					primary key		auto_increment,
   GenreID			varchar(255)		not null,
   foreign key (GenreID) references Genre (GenreID)
   );
   
-- create the Genre table
CREATE TABLE Genre (
   GenreID			int					primary key		auto_increment,
   genre			varchar(255)		not null		unique
   );