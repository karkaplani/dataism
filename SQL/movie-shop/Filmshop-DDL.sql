DROP TABLE IF EXISTS Movie_Customer;
DROP TABLE IF EXISTS Movie;
DROP TABLE IF EXISTS Customer;
DROP TABLE IF EXISTS Director;
DROP TABLE IF EXISTS Producer_Company;
DROP TABLE IF EXISTS Country;


CREATE TABLE Country (
  Country_Code  CHAR(3)  NOT NULL,
  Country_Name  VARCHAR(30),
  Country_Pop   BIGINT,
  CONSTRAINT country_pk PRIMARY KEY (Country_Code)
);

CREATE TABLE Director (
  Direct_ID  CHAR(4)  NOT NULL,
  Direct_Fname  VARCHAR(30),
  Direct_Lname  VARCHAR(30),
  Direct_Country  CHAR(3),
  CONSTRAINT director_pk PRIMARY KEY (Direct_ID),
  CONSTRAINT country_fk FOREIGN KEY (Direct_Country) REFERENCES Country (Country_Code)
);

CREATE TABLE Producer_Company (
  Company_ID  CHAR(3)  NOT NULL,
  Company_Name  VARCHAR(30),
  Company_Country  CHAR(3),
  CONSTRAINT producer_company_pk PRIMARY KEY (Company_ID)
);

CREATE TABLE Movie (
  Movie_ID CHAR(3)  NOT NULL,
  Movie_Name  VARCHAR(30),
  Director  CHAR(4),
  Producer  CHAR(3),
  Rls_Date  DATE,
  CONSTRAINT Movie_pk PRIMARY KEY (Movie_ID),
  CONSTRAINT director_fk FOREIGN KEY (Director) REFERENCES Director (Direct_ID),
  CONSTRAINT movie_produc_fk FOREIGN KEY (Producer) REFERENCES Producer_Company (Company_ID)
); 

CREATE TABLE Customer (
  Cust_ID  CHAR(3)  NOT NULL,
  Cust_Fname  VARCHAR(30),
  Cust_Lname  VARCHAR(30),
  Cust_Phone  VARCHAR(15),
  Cust_Balance  NUMERIC(4,2),
  Cust_Country  CHAR(3),
  CONSTRAINT PK_Cust_ID PRIMARY KEY (Cust_ID),
  CONSTRAINT FK_Cust_Country FOREIGN KEY (Cust_Country) REFERENCES Country (Country_Code)
);

CREATE TABLE Movie_Customer (
  Inventory_ID  SMALLINT  NOT NULL,
  Movie_ID  CHAR(3)  NOT NULL,
  Borrower_ID  CHAR(3),
  CONSTRAINT PK_Primary_Key PRIMARY KEY (Inventory_ID, Movie_ID),
  CONSTRAINT FK_Movie_ID FOREIGN KEY (Movie_ID) REFERENCES Movie (Movie_ID),
  CONSTRAINT FK_Cust_ID FOREIGN KEY (Borrower_ID) REFERENCES Customer (Cust_ID)
);

