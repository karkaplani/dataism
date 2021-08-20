DELETE FROM Country;
DELETE FROM Director;
DELETE FROM Producer_Company;
DELETE FROM Movie;
DELETE FROM Customer;
DELETE FROM Movie_Customer;

BEGIN;

INSERT INTO Country (Country_Code, Country_Name, Country_Pop)
  VALUES ('TUR', 'Turkey', 84339067);
INSERT INTO Country (Country_Code, Country_Name, Country_Pop)
  VALUES ('VIE', 'Vietnam', 97338579 );
INSERT INTO Country (Country_Code, Country_Name, Country_Pop)
  VALUES ('USA', 'The United States', 330003650 );
INSERT INTO Country (Country_Code, Country_Name, Country_Pop)
  VALUES ('ITA', 'Italy', 60461826);
INSERT INTO Country (Country_Code, Country_Name, Country_Pop)
  VALUES ('UKI', 'The United Kingdom', 67886011);

INSERT INTO Director (Direct_ID, Direct_Fname, Direct_Lname, Direct_Country)
  VALUES ('FFC', 'Francis Ford', 'Coppola', 'ITA');
INSERT INTO Director (Direct_ID, Direct_Fname, Direct_Lname, Direct_Country)
  VALUES ('SPL', 'Spike', 'Lee', 'USA');
INSERT INTO Director (Direct_ID, Direct_Fname, Direct_Lname, Direct_Country)
  VALUES ('GUR', 'Guy', 'Ritchie', 'UKI');
INSERT INTO Director (Direct_ID, Direct_Fname, Direct_Lname, Direct_Country)
  VALUES ('WCB', 'Wachowski', 'Brothers', 'USA');
INSERT INTO Director (Direct_ID, Direct_Fname, Direct_Lname, Direct_Country)
  VALUES ('PTJ', 'Peter', 'Jackson', 'USA');
INSERT INTO Director (Direct_ID, Direct_Fname, Direct_Lname, Direct_Country)
  VALUES ('STK', 'Stanley', 'Kubrick', 'USA');
INSERT INTO Director (Direct_ID, Direct_Fname, Direct_Lname, Direct_Country)
  VALUES ('PTD', 'Pete', 'Docter', 'USA');
INSERT INTO Director (Direct_ID, Direct_Fname, Direct_Lname, Direct_Country)
  VALUES ('STS', 'Steven', 'Spielberg', 'USA');
INSERT INTO Director (Direct_ID, Direct_Fname, Direct_Lname, Direct_Country)
  VALUES ('QUT', 'Quentin', 'Tarantino', 'USA');

INSERT INTO Producer_Company (Company_ID, Company_Name, Company_Country)
  VALUES ('PRM', 'Paramount', 'USA');
INSERT INTO Producer_Company (Company_ID, Company_Name, Company_Country)
  VALUES ('FOA', '40 Acres and a Mule', 'USA');
INSERT INTO Producer_Company (Company_ID, Company_Name, Company_Country)
  VALUES ('VRP', 'Village Shadow Pictures', 'USA');
INSERT INTO Producer_Company (Company_ID, Company_Name, Company_Country)
  VALUES ('WNB', 'Warner Bros', 'USA');
INSERT INTO Producer_Company (Company_ID, Company_Name, Company_Country)
  VALUES ('NWC', 'Newline Cinema', 'USA');
INSERT INTO Producer_Company (Company_ID, Company_Name, Company_Country)
  VALUES ('TPC', 'The Producer Cirlce', 'USA');
INSERT INTO Producer_Company (Company_ID, Company_Name, Company_Country)
  VALUES ('PXR', 'Pixar', 'USA');
INSERT INTO Producer_Company (Company_ID, Company_Name, Company_Country)
  VALUES ('UNP', 'Universal Pictures', 'USA');
INSERT INTO Producer_Company (Company_ID, Company_Name, Company_Country)
  VALUES ('ABA', 'A Band Apart', 'USA');

INSERT INTO Movie (Movie_ID, Movie_Name, Director, Producer, Rls_Date)
  VALUES ('GDF', 'The Godfather', 'FFC', 'PRM', '1972-03-14'); 
INSERT INTO Movie (Movie_ID, Movie_Name, Director, Producer, Rls_Date)
  VALUES ('DFB', 'Da 5 Blood', 'SPL', 'FOA', '2020-06-12');
INSERT INTO Movie (Movie_ID, Movie_Name, Director, Producer, Rls_Date)
  VALUES ('SRH', 'Sherlock Holmes', 'GUR', 'VRP', '2009-12-25'); 
INSERT INTO Movie (Movie_ID, Movie_Name, Director, Producer, Rls_Date)
  VALUES ('MTR', 'The Matrix', 'WCB', 'WNB', '1999-03-31'); 
INSERT INTO Movie (Movie_ID, Movie_Name, Director, Producer, Rls_Date)
  VALUES ('LTR', 'Lord of The Rings', 'PTJ', 'NWC', '2001-12-21');
INSERT INTO Movie (Movie_ID, Movie_Name, Director, Producer, Rls_Date)
  VALUES ('CLO', 'A Clockwork Orange', 'STK', 'WNB', '1971-12-19'); 
INSERT INTO Movie (Movie_ID, Movie_Name, Director, Producer, Rls_Date)
  VALUES ('SHN', 'The Shining', 'STK', 'TPC', '1980-05-23'); 
INSERT INTO Movie (Movie_ID, Movie_Name, Director, Producer, Rls_Date)
  VALUES ('INO', 'Inside Out', 'PTD', 'PXR', '2015-05-18');
INSERT INTO Movie (Movie_ID, Movie_Name, Director, Producer, Rls_Date)
  VALUES ('JWS', 'Jaws', 'STS', 'UNP', '1975-06-20'); 
INSERT INTO Movie (Movie_ID, Movie_Name, Director, Producer, Rls_Date)
  VALUES ('PUF', 'Pulp Fiction', 'QUT', 'ABA', '1994-05-21'); 
INSERT INTO Movie (Movie_ID, Movie_Name, Director, Producer, Rls_Date)
  VALUES ('KIB', 'Kill Bill', 'QUT', 'ABA', '2003-10-10');

INSERT INTO Customer (Cust_ID, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Balance, Cust_Country)
  VALUES ('APO', 'Apo', 'Ilgun', '4123456789', 75, 'TUR');
INSERT INTO Customer (Cust_ID, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Balance, Cust_Country)
  VALUES ('DTM', 'Do', 'Trungminh', '3145446789', 82, 'VIE');
INSERT INTO Customer (Cust_ID, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Balance, Cust_Country)
  VALUES ('ERT', 'Ertan', 'Ergun', '1789556789', 31, 'USA');
INSERT INTO Customer (Cust_ID, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Balance, Cust_Country)
  VALUES ('JHN', 'John', 'Posh', '7123471489', 46, 'UKI');
INSERT INTO Customer (Cust_ID, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Balance, Cust_Country)
  VALUES ('VFN', 'Vafa', 'Napolea', '6792456789', 65, 'ITA');

INSERT INTO Movie_Customer (Inventory_ID, Movie_ID, Borrower_ID)
  VALUES(1,'GDF','APO');
INSERT INTO Movie_Customer (Inventory_ID, Movie_ID, Borrower_ID)
  VALUES(1,'DFB','DTM');
INSERT INTO Movie_Customer (Inventory_ID, Movie_ID, Borrower_ID)
  VALUES(1,'INO','ERT');
INSERT INTO Movie_Customer (Inventory_ID, Movie_ID, Borrower_ID)
  VALUES(2,'INO','APO');
INSERT INTO Movie_Customer (Inventory_ID, Movie_ID, Borrower_ID)
  VALUES(1,'SRH','JHN');
INSERT INTO Movie_Customer (Inventory_ID, Movie_ID, Borrower_ID)
  VALUES(1,'LTR','APO');
INSERT INTO Movie_Customer (Inventory_ID, Movie_ID, Borrower_ID)
  VALUES(1,'MTR','APO');
INSERT INTO Movie_Customer (Inventory_ID, Movie_ID, Borrower_ID)
  VALUES(1,'JWS','ERT');

COMMIT;