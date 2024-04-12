CREATE TABLE Library_Branch(
Branch_Name varchar(100) primary KEY,
    	Email varchar(100) not null,
    	City varchar(100) not null,
    	State char(2) not null,
    	Postal_Code NUMERIC(5,0) CHECK (postal_code >= 10000 AND postal_code <= 99999)    
);

ALTER TABLE Library_Branch
ADD CONSTRAINT chk_state CHECK (State IN ('AL', 'AK', 'AZ', 'AR', 'CA', 'CO', 'CT', 'DE', 'FL', 'GA', 
'HI', 'ID', 'IL', 'IN', 'IA', 'KS', 'KY', 'LA', 'ME', 'MD', 'MA', 'MI', 'MN', 'MS', 'MO', 'MT', 
'NE', 'NV', 'NH', 'NJ', 'NM', 'NY', 'NC', 'ND', 'OH', 'OK', 'OR', 'PA', 'RI', 'SC', 'SD', 'TN', 
'TX', 'UT', 'VT', 'VA', 'WA', 'WV', 'WI', 'WY', 'DC'));



CREATE TABLE Library_Numbers(
    Phone_ID int AUTO_INCREMENT, 
    Branch_Name varchar(100) NOT null,
    Department varchar(50),
    Phone_Number varchar(15) UNIQUE NOT null,
    PRIMARY KEY(Phone_ID),
    FOREIGN KEY(Branch_Name) REFERENCES Library_Branch(Branch_Name));

CREATE table Member(
    Member_ID int AUTO_INCREMENT,
    Email varchar(50) NOT null,
    SSN numeric(9,0) UNIQUE NOT null,
    First_Name varchar(20) NOT null,
    Last_Name varchar(50) NOT null,
    Branch_Name varchar(100) NOT null,
    PRIMARY KEY(Member_ID),
    FOREIGN KEY(Branch_Name) REFERENCES Library_Branch(Branch_Name));

CREATE TABLE Member_Number(
    Phone_ID int AUTO_INCREMENT,
    Member_ID int NOT null,
    Phone_Number varchar(15)UNIQUE NOT null,
    PRIMARY KEY(Phone_ID),
    FOREIGN KEY(Member_ID) REFERENCES Member(Member_ID));
    

CREATE TABLE Media(
    Media_ID int AUTO_INCREMENT,
    Creation_Date date,
    Title varchar(100) NOT null,
    Studio varchar(50),
    Publisher varchar(50),
    Rentable bit NOT null,
    PRIMARY KEY(Media_ID));
    
CREATE TABLE Genre(
    Code int AUTO_INCREMENT,
    Genre varchar(100) UNIQUE NOT null,
    PRIMARY KEY(Code));

CREATE TABLE Author(
    ID int AUTO_INCREMENT,
    First_Name varchar(20) NOT null,
    Last_Name varchar(50) NOT null,
    PRIMARY KEY(ID)
);

CREATE TABLE Artist(
    ID int AUTO_INCREMENT,
    First_Name varchar(20),
    Last_Name varchar(50),
    Group_Name varchar(50),
    PRIMARY KEY(ID)
);

CREATE TABLE Media_Genre(
    Media_ID int,
    Genre_Code int,
    PRIMARY KEY(Media_ID, Genre_Code),
    FOREIGN KEY(Media_ID) REFERENCES Media(Media_ID),
    FOREIGN KEY(Genre_Code) REFERENCES Genre(Code));

CREATE TABLE Author_Media(
    Author_ID int,
    Media_ID int,
    PRIMARY KEY(Author_ID, Media_ID),
    FOREIGN KEY(Author_ID) REFERENCES Author(ID),
    FOREIGN KEY(Media_ID) REFERENCES Media(Media_ID)); 

CREATE TABLE Artist_Media(
    Artist_ID int,
    Media_ID int,
    PRIMARY KEY(Artist_ID, Media_ID),
    FOREIGN KEY(Artist_ID) REFERENCES Artist(ID),
    FOREIGN KEY(Media_ID) REFERENCES Media(Media_ID)); 

CREATE TABLE Member_Access(
    Member_Access_ID int,
    Media_Selection int,
    Access_Date date NOT null,
    Access_Time  time NOT null,
    Due_Date date,
    End_of_Access_Date date NOT null,
    End_of_Access_Time time NOT null,
    PRIMARY KEY(Member_Access_ID, Media_Selection),
    FOREIGN KEY(Member_Access_ID) REFERENCES Member(Member_ID),
    FOREIGN KEY(Media_Selection) REFERENCES Media(Media_ID));


CREATE TABLE Staff(
    StaffID int AUTO_INCREMENT PRIMARY KEY,
    Branch_Name varchar(100) NOT NULL,
    SSN numeric(9,0) UNIQUE NOT NULL,
    Salary numeric(10,2) NOT NULL,
    First_Name CHAR(50) NOT NULL,
    Last_Name CHAR(50) NOT NULL,
    Job_Title CHAR(50) NOT NULL,   
    
    CONSTRAINT fk_branch_name FOREIGN KEY (Branch_Name) REFERENCES Library_Branch(Branch_Name),
    CONSTRAINT chk_positive_salary CHECK (Salary >= 0)
);



CREATE TABLE Certifications (
    Title VARCHAR(200) NOT NULL,
    Staff_Member INT NOT NULL,
    Date_Earned DATE NOT NULL,
    
    PRIMARY KEY (Title, Staff_Member),
    FOREIGN KEY (Staff_Member) REFERENCES Staff(StaffID)
);



CREATE TABLE Service_Equipment (
    Equipment_Serial_Num VARCHAR(70) NOT NULL Primary KEY,
    Branch_Name VARCHAR(100) NOT NULL,
    Stock_Date DATE NOT NULL,
    Quantity INT NOT NULL CHECK (Quantity >= 0),
    Equipment_Type CHAR(8) NOT NULL CHECK (Equipment_Type IN ('Computer', 'Printer', 'Scanner')),
    FOREIGN KEY (Branch_Name) REFERENCES Library_Branch(Branch_Name)
);

CREATE TABLE Supplies (
    Supply_ID INT AUTO_INCREMENT PRIMARY KEY,
    Branch_Name VARCHAR(100) NOT NULL,
    Name VARCHAR(200) NOT NULL,
    Stock_Date DATE NOT NULL,
    Quantity INT NOT NULL CHECK (Quantity >= 0),
    
    FOREIGN KEY (Branch_Name) REFERENCES Library_Branch(Branch_Name)
);



CREATE TABLE Computer (
    Equipment_Serial_Num VARCHAR(70) NOT NULL,
    PRIMARY KEY (Equipment_Serial_Num),
    FOREIGN KEY (Equipment_Serial_Num) REFERENCES Service_Equipment(Equipment_Serial_Num)
);

CREATE TABLE Printer (
    Equipment_Serial_Num VARCHAR(70) NOT NULL,
    Paper_Count numeric(4,0) NOT NULL default 0 CHECK (Paper_Count >= 0),
    PRIMARY KEY (Equipment_Serial_Num),
    FOREIGN KEY (Equipment_Serial_Num) REFERENCES Service_Equipment(Equipment_Serial_Num)
);

CREATE TABLE Scanner (
    Equipment_Serial_Num VARCHAR(70) NOT NULL,
    PRIMARY KEY (Equipment_Serial_Num),
    FOREIGN KEY (Equipment_Serial_Num) REFERENCES Service_Equipment(Equipment_Serial_Num)
);

Create table Emergency_Equipment(
EE_ID int primary key AUTO_INCREMENT,
    	Name VARCHAR(255) NOT NULL;
Branch_Name varchar(100) Not Null,
    	Stock_Date date not null,
Expiration_Date date not Null,
    	Directions varchar(250),
    	FOREIGN Key (Branch_Name) references Library_Branch(Branch_Name)
)






CREATE TABLE Events (
    Event_ID INT PRIMARY KEY AUTO_INCREMENT,
    Branch_Name VARCHAR(100) NOT NULL,
    Title VARCHAR(200) NOT NULL,
    Description TEXT, 
    Event_Date DATE NOT NULL,
    Event_Start_Time TIME NOT NULL, 
    Event_End_Time TIME NOT NULL,
    
    FOREIGN KEY (Branch_Name) REFERENCES Library_Branch(Branch_Name)
);

CREATE TABLE Ages (
    Age_Code INT PRIMARY KEY AUTO_INCREMENT,
    Description VARCHAR(255) UNIQUE NOT NULL
);


CREATE TABLE Event_Ages (
    Event_ID INT,
    Age_Code INT,
    PRIMARY KEY (Event_ID, Age_Code),
    FOREIGN KEY (Event_ID) REFERENCES Events(Event_ID),
    FOREIGN KEY (Age_Code) REFERENCES Ages(Age_Code)
);





