
INSERT INTO Library_Branch (Branch_Name, Email, City, State, Postal_Code)
VALUES 
    ('Meadowton Library', 'Meadowlib@goldfinchcounty.gov', 'Meadowton', 'VA', '24001'),
    ('Thrushwood Branch', 'Thrushwlib@goldfinchcounty.gov', 'Thrushwood', 'VA', '24002'),
    ('Great Horn Library', 'GHlib@goldfinchcounty.gov', 'Great Horn', 'VA', '24003'),
    ('North Flicker Library', 'NFlicklib@goldfinchcounty.gov', 'North Flicker', 'VA', '24004'),
    ('Starlington Library', 'Starlib@goldfinchcounty.gov', 'Starlington', 'VA', '24005');


INSERT INTO Library_Numbers (Phone_ID, Branch_Name, Phone_Number, Department)
VALUES 
    (1, 'Meadowton Library', '555-1111', 'Front Desk'),
    (2, 'Meadowton Library', '555-2222', 'Human Resources'),
    (3, 'Meadowton Library', '555-3333', 'Administration'),
    (4, 'Meadowton Library', '555-4444', 'Tech Services'),
    (5, 'Meadowton Library', '555-5555', 'Circulation Department'),
    (6, 'Meadowton Library', '555-6666', 'Cataloging Department'),
    (7, 'Thrushwood Branch', '555-7777', 'Front Desk'),
    (8, 'Thrushwood Branch', '555-8888', 'Human Resources'),
    (9, 'Thrushwood Branch', '555-9999', 'Administration'),
    (10, 'Thrushwood Branch', '555-1010', 'Tech Services'),
    (11, 'Thrushwood Branch', '555-2020', 'Circulation Department'),
    (12, 'Thrushwood Branch', '555-3030', 'Cataloging Department'),
    (13, 'Great Horn Library', '555-4040', 'Front Desk'),
    (14, 'Great Horn Library', '555-5050', 'Human Resources'),
    (15, 'Great Horn Library', '555-6060', 'Administration'),
    (16, 'Great Horn Library', '555-7070', 'Tech Services'),
    (17, 'Great Horn Library', '555-8080', 'Circulation Department'),
    (18, 'Great Horn Library', '555-9090', 'Cataloging Department'),
    (19, 'North Flicker Library', '555-1212', 'Front Desk'),
    (20, 'North Flicker Library', '555-2323', 'Human Resources'),
    (21, 'North Flicker Library', '555-3434', 'Administration'),
    (22, 'North Flicker Library', '555-4545', 'Tech Services'),
    (23, 'North Flicker Library', '555-5656', 'Circulation Department'),
    (24, 'North Flicker Library', '555-6767', 'Cataloging Department'),
    (25, 'Starlington Library', '555-7878', 'Front Desk'),
    (26, 'Starlington Library', '555-8989', 'Human Resources'),
    (27, 'Starlington Library', '555-9898', 'Administration'),
    (28, 'Starlington Library', '555-9191', 'Tech Services'),
    (29, 'Starlington Library', '555-2324', 'Circulation Department'),
    (30, 'Starlington Library', '555-3435', 'Cataloging Department');


INSERT INTO Member (Member_ID, Email, SSN, First_Name, Last_Name, Branch_Name)
VALUES 
    -- Meadowton Library
    (1, 'john.doe@gmail.com', '123456789', 'John', 'Doe', 'Meadowton Library'),
    (2, 'jane.smith@gmail.com', '234567890', 'Jane', 'Smith', 'Meadowton Library'),
    (3, 'michael.wilson@gmail.com', '345678901', 'Michael', 'Wilson', 'Meadowton Library'),
    (4, 'susan.johnson@gmail.com', '456789012', 'Susan', 'Johnson', 'Meadowton Library'),
    (5, 'david.anderson@gmail.com', '567890123', 'David', 'Anderson', 'Meadowton Library'),

    -- Thrushwood Branch
    (6, 'robert.thomas@gmail.com', '678901234', 'Robert', 'Thomas', 'Thrushwood Branch'),
    (7, 'emily.brown@gmail.com', '789012345', 'Emily', 'Brown', 'Thrushwood Branch'),
    (8, 'william.martin@gmail.com', '890123456', 'William', 'Martin', 'Thrushwood Branch'),
    (9, 'olivia.lewis@gmail.com', '901234567', 'Olivia', 'Lewis', 'Thrushwood Branch'),
    (10, 'daniel.perez@gmail.com', '012345678', 'Daniel', 'Perez', 'Thrushwood Branch'),

    -- Great Horn Library
    (11, 'jennifer.davis@gmail.com', '765432109', 'Jennifer', 'Davis', 'Great Horn Library'),
    (12, 'matthew.robinson@gmail.com', '654321098', 'Matthew', 'Robinson', 'Great Horn Library'),
    (13, 'elizabeth.hernandez@gmail.com', '543210987', 'Elizabeth', 'Hernandez', 'Great Horn Library'),
    (14, 'james.gonzalez@gmail.com', '432109876', 'James', 'Gonzalez', 'Great Horn Library'),
    (15, 'sarah.wright@gmail.com', '321098765', 'Sarah', 'Wright', 'Great Horn Library'),

    -- North Flicker Library
    (16, 'daniel.green@gmail.com', '210987654', 'Daniel', 'Green', 'North Flicker Library'),
    (17, 'natalie.king@gmail.com', '109876543', 'Natalie', 'King', 'North Flicker Library'),
    (18, 'jacob.murphy@gmail.com', '098765432', 'Jacob', 'Murphy', 'North Flicker Library'),
    (19, 'ava.hill@gmail.com', '987654321', 'Ava', 'Hill', 'North Flicker Library'),
    (20, 'emma.carter@gmail.com', '876543210', 'Emma', 'Carter', 'North Flicker Library'),

    -- Starlington Library
    (21, 'benjamin.taylor@gmail.com', '345678912', 'Benjamin', 'Taylor', 'Starlington Library'),
    (22, 'victoria.lee@gmail.com', '456789123', 'Victoria', 'Lee', 'Starlington Library'),
    (23, 'charles.nguyen@gmail.com', '567891234', 'Charles', 'Nguyen', 'Starlington Library'),
    (24, 'grace.hall@gmail.com', '678912345', 'Grace', 'Hall', 'Starlington Library'),
    (25, 'logan.ramirez@gmail.com', '789123456', 'Logan', 'Ramirez', 'Starlington Library'),
    (26, 'bilbo.baggins@bagend.com', '112345678', 'Bilbo', 'Baggins', 'Starlington Library');


INSERT INTO Member_Number (Phone_ID, Member_ID, Phone_Number)
VALUES 
    -- Meadowton Library members
    (1, 1, '555-1111'),
    (2, 2, '555-2222'),
    (3, 3, '555-3333'),
    (4, 4, '555-4444'),
    (5, 5, '555-5555'),

    -- Thrushwood Branch members
    (6, 6, '555-6666'),
    (7, 7, '555-7777'),
    (8, 8, '555-8888'),
    (9, 9, '555-9999'),
    (10, 10, '555-1010'),

    -- Great Horn Library members
    (11, 11, '555-1116'),
    (12, 12, '555-1117'),
    (13, 13, '555-1118'),
    (14, 14, '555-1119'),
    (15, 15, '555-1120'),

    -- North Flicker Library members
    (16, 16, '555-1121'),
    (17, 17, '555-1122'),
    (18, 18, '555-1123'),
    (19, 19, '555-1124'),
    (20, 20, '555-1125'),

    -- Starlington Library members
    (21, 21, '555-1126'),
    (22, 22, '555-1127'),
    (23, 23, '555-1128'),
    (24, 24, '555-1129'),
    (25, 25, '555-1130'),
    (26, 26, '555-1131');

–Media
INSERT INTO Media (Media_ID, Title, Creation_Date, Studio, Publisher, Rentable)
VALUES
    (1, 'Pride and Prejudice', '1813-01-28', 'BBC Studios', 'Penguin Classics', 1),
    (2, 'To Kill a Mockingbird', '1960-07-11', 'HarperCollins Publishers', 'J.B. Lippincott & Co.', 1),
    (3, '1984', '1949-06-08', 'Universal Pictures', 'Secker & Warburg', 1),
    (4, 'The Great Gatsby', '1925-04-10', 'Warner Bros. Pictures', 'Charles Scribner''s Sons', 1),
    (5, 'Moby-Dick', '1851-10-18', 'Paramount Pictures', 'Harper & Brothers', 1),
    (6, 'Alice''s Adventures in Wonderland', '1865-11-26', 'Disney Studios', 'Macmillan Publishers', 1),
    (7, 'The Catcher in the Rye', '1951-07-16', 'Amazon Studios', 'Little, Brown and Company', 1),
    (8, 'Frankenstein', '1818-01-01', 'Universal Pictures', 'Lackington, Hughes, Harding, Mavor & Jones', 1),
    (9, 'Don Quixote', '1605-01-16', 'Sony Pictures', 'Francisco de Robles', 1),
    (10, 'The Adventures of Huckleberry Finn', '1884-12-10', '20th Century Studios', 'Chatto & Windus', 1);


INSERT INTO Member_Access (Member_Access_ID, Media_Selection, Access_Date, Access_Time, Due_Date, End_Of_Access_Date, End_Of_Access_Time)
VALUES
    (1, 1, '2024-03-01', '09:00:00', '2024-03-08', '2024-03-08', '18:00:00'),
    (2, 2, '2024-03-02', '10:30:00', '2024-03-09', '2024-03-09', '20:00:00'),
    (3, 3, '2024-03-03', '11:45:00', '2024-03-10', '2024-03-10', '22:00:00'),
    (4, 4, '2024-03-04', '12:15:00', '2024-03-11', '2024-03-11', '23:30:00'),
    (5, 5, '2024-03-05', '13:45:00', '2024-03-12', '2024-03-12', '19:00:00'),
    (6, 6, '2024-03-06', '14:30:00', '2024-03-13', '2024-03-13', '21:00:00'),
    (7, 7, '2024-03-07', '15:00:00', '2024-03-14', '2024-03-14', '22:30:00'),
    (8, 8, '2024-03-08', '16:30:00', '2024-03-15', '2024-03-15', '23:45:00'),
    (9, 9, '2024-03-09', '17:45:00', '2024-03-16', '2024-03-16', '20:30:00'),
    (10, 10, '2024-03-10', '18:00:00', '2024-03-17', '2024-03-17', '21:45:00');

INSERT INTO Genre (Code, Genre)
VALUES
    (1, 'Romance'),
    (2, 'Classic Fiction'),
    (3, 'Dystopian'),
    (4, 'Literary Fiction'),
    (5, 'Adventure'),
    (6, 'Children''s Literature'),
    (7, 'Coming-of-Age'),
    (8, 'Gothic Horror'),
    (9, 'Satire'),
    (10, 'Womens Fiction');













INSERT INTO Media_Genre (Media_ID, Genre_Code)
VALUES
   
    (1, 1),  -- Pride and Prejudice - Romance
    (2, 2),  -- To Kill a Mockingbird - Classic Fiction
    (3, 3),  -- 1984 - Dystopian
    (4, 4),  -- The Great Gatsby - Literary Fiction
    (5, 5),  -- Moby-Dick - Adventure
    (6, 6),  -- Alice's Adventures in Wonderland - Children's Literature
    (7, 7),  -- The Catcher in the Rye - Coming-of-Age
    (8, 8),  -- Frankenstein - Gothic Horror
    (9, 9),  -- Don Quixote - Satire
    (10, 5); -- The Adventures of Huckleberry Finn - Adventure

INSERT INTO Author (ID, First_Name, Last_Name)
VALUES
    (1, 'Jane', 'Austen'),             -- Pride and Prejudice
    (2, 'Harper', 'Lee'),              -- To Kill a Mockingbird
    (3, 'George', 'Orwell'),           -- 1984
    (4, 'F. Scott', 'Fitzgerald'),     -- The Great Gatsby
    (5, 'Herman', 'Melville'),         -- Moby-Dick
    (6, 'Lewis', 'Carroll'),           -- Alice's Adventures in Wonderland
    (7, 'J.D.', 'Salinger'),           -- The Catcher in the Rye
    (8, 'Mary', 'Shelley'),            -- Frankenstein
    (9, 'Miguel de', 'Cervantes'),     -- Don Quixote
    (10, 'Mark', 'Twain');             -- The Adventures of Huckleberry Finn

INSERT INTO Author_Media (Author_ID, Media_ID)
VALUES
    (1, 1),   -- Jane Austen - Pride and Prejudice
    (2, 2),   -- Harper Lee - To Kill a Mockingbird
    (3, 3),   -- George Orwell - 1984
    (4, 4),   -- F. Scott Fitzgerald - The Great Gatsby
    (5, 5),   -- Herman Melville - Moby-Dick
    (6, 6),   -- Lewis Carroll - Alice's Adventures in Wonderland
    (7, 7),   -- J.D. Salinger - The Catcher in the Rye
    (8, 8),   -- Mary Shelley - Frankenstein
    (9, 9),   -- Miguel de Cervantes - Don Quixote
    (10, 10); -- Mark Twain - The Adventures of Huckleberry Finn





INSERT INTO Artist (ID, First_Name, Last_Name, Group_Name)
VALUES
    (1, 'Willie', 'Nelson', NULL),            
    (2, 'Stan', 'Getz', NULL),       
    (3, 'Edith', 'Piaf', NULL),            
    (4, 'Dale', 'Watson', NULL),           
    (5, NULL, NULL, 'Spoon'),
    (6, 'Andrew', 'Cashen', NULL),
    (7, NULL, NULL, 'A Giant Dog'),
    (8, NULL, NULL, 'Sweet Spirit'),
    (9, NULL, NULL, 'Tinnarose'),
    (10, NULL, NULL, 'Nuevo');       

INSERT INTO Artist_Media (Artist_ID, Media_ID)
VALUES
    (1, 1),   -- Willie Nelson 
    (2, 2),   -- Stan Getz 
    (3, 3),   -- Edith Piaf 
    (4, 4),   -- Dale Watson 
    (5, 5),   -- Spoon 
    (6, 6),   -- Andrew Cashen 
    (7, 7),   -- A Giant Dog 
    (8, 8),   -- Sweet Spirit 
    (9, 9),   -- Tinnarose 
    (10, 10); -- Nuevo 





INSERT INTO Staff (Branch_Name, SSN, Salary, First_Name, Last_Name, Job_Title)
VALUES 
    ('Meadowton Library', 123456789, 45000.00, 'John', 'Doe', 'Librarian'),
    ('Thrushwood Branch', 234567891, 50000.00, 'Jane', 'Smith', 'Archivist'),
    ('Great Horn Library', 345678912, 55000.00, 'Emily', 'Johnson', 'Library Director'),
    ('North Flicker Library', 456789123, 42000.00, 'Michael', 'Williams', 'Research Specialist'),
    ('Starlington Library', 567891234, 47000.00, 'Maria', 'Brown', 'Youth Services Coordinator');

INSERT INTO Certifications (Title, Staff_Member, Date_Earned)
VALUES 
    ('Library Certificate', 1, '2023-01-15'),
    ('Archival Studies Certification', 2, '2023-02-20'),
    ('Library Management Certificate', 3, '2023-03-25'),
    ('Research Methodologies Certified', 4, '2023-04-30'),
    ('Youth Engagement Certificate', 5, '2023-05-05');

INSERT INTO Supplies (Branch_Name, Name, Stock_Date, Quantity)
VALUES 
    ('Meadowton Library', 'Paper', '2024-03-15', 500),
    ('Meadowton Library', 'Pens', '2024-02-20', 300),
    ('Thrushwood Branch', 'Paper', '2024-01-25', 600),
    ('Thrushwood Branch', 'Pens', '2024-03-05', 250),
    ('Great Horn Library', 'Paper', '2024-02-15', 550),
    ('Great Horn Library', 'Pens', '2024-01-20', 200),
    ('North Flicker Library', 'Paper', '2024-03-10', 450),
    ('North Flicker Library', 'Pens', '2024-02-18', 350),
    ('Starlington Library', 'Paper', '2024-01-15', 700),
    ('Starlington Library', 'Pens', '2024-03-01', 400);


INSERT INTO Ages (Description)
VALUES 
    ('Children'),
    ('Teenagers'),
    ('Adults'),
    ('Seniors');

INSERT INTO Events (Branch_Name, Title, Description, Event_Date, Event_Start_Time, Event_End_Time)
VALUES 
    ('Meadowton Library', 'Storytime for Kids', 'A delightful read for young ones.', '2024-06-01', '10:00', '11:00'),
    ('Thrushwood Branch', 'Tech for Teens', 'A workshop on the latest tech trends.', '2024-06-08', '13:00', '15:00'),
    ('Great Horn Library', 'Financial Literacy', 'Learn to manage your personal finances.', '2024-06-15', '16:00', '18:00'),
    ('North Flicker Library', 'Book Club', 'Monthly book discussion group.', '2024-06-22', '18:00', '20:00'),
    ('Starlington Library', 'History Lecture', 'A lecture on local history.', '2024-06-29', '14:00', '16:00');

INSERT INTO Event_Ages (Event_ID, Age_Code)
VALUES 
    (1, 1), -- Children for Meadowton Library's Storytime
    (2, 2), -- Teenagers for Thrushwood's Tech Workshop
    (3, 3), -- Adults for Great Horn Library's Financial Literacy
    (4, 1), -- Children for North Flicker Library's Book Club
    (4, 3), -- Adults for North Flicker Library's Book Club
    (5, 4); -- Seniors for Starlington Library's History Lecture

INSERT INTO Service_Equipment (Equipment_Serial_Num, Branch_Name, Stock_Date, Quantity, Equipment_Type)
VALUES 
    ('C123456789', 'Meadowton Library', '2024-02-01', 1, 'Computer'),
    ('P123456789', 'Meadowton Library', '2024-02-02', 1, 'Printer'),
    ('S123456789', 'Meadowton Library', '2024-02-03', 1, 'Scanner'),
    
    ('C234567891', 'Thrushwood Branch', '2024-03-01', 1, 'Computer'),
    ('P234567891', 'Thrushwood Branch', '2024-03-02', 1, 'Printer'),
    ('S234567891', 'Thrushwood Branch', '2024-03-03', 1, 'Scanner'),

    ('C345678912', 'Great Horn Library', '2024-04-01', 1, 'Computer'),
    ('P345678912', 'Great Horn Library', '2024-04-02', 1, 'Printer'),
    ('S345678912', 'Great Horn Library', '2024-04-03', 1, 'Scanner'),

    ('C456789123', 'North Flicker Library', '2024-05-01', 1, 'Computer'),
    ('P456789123', 'North Flicker Library', '2024-05-02', 1, 'Printer'),
    ('S456789123', 'North Flicker Library', '2024-05-03', 1, 'Scanner'),

    ('C567891234', 'Starlington Library', '2024-06-01', 1, 'Computer'),
    ('P567891234', 'Starlington Library', '2024-06-02', 1, 'Printer'),
    ('S567891234', 'Starlington Library', '2024-06-03', 1, 'Scanner');

INSERT INTO Computer (Equipment_Serial_Num)
VALUES 
    ('C123456789'),
    ('C234567891'),
    ('C345678912'),
    ('C456789123'),
    ('C567891234');

INSERT INTO Printer (Equipment_Serial_Num, Paper_Count)
VALUES 
    ('P123456789', 500),
    ('P234567891', 500),
    ('P345678912', 500),
    ('P456789123', 500),
    ('P567891234', 500);

INSERT INTO Scanner (Equipment_Serial_Num)
VALUES 
    ('S123456789'),
    ('S234567891'),
    ('S345678912'),
    ('S456789123'),
    ('S567891234');

INSERT INTO Emergency_Equipment (Branch_Name, Stock_Date, Expiration_Date, Directions, Name)
VALUES 
    ('Meadowton Library', '2024-02-01', '2033-08-01', 'Use in case of fire. Check gauge monthly.', 'Fire Extinguisher'),
    ('Meadowton Library', '2024-02-02', '2026-09-15', 'Contains bandages, antiseptics, and splints.', 'First Aid Kit'),
    
    ('Thrushwood Branch', '2024-03-01', '2033-07-20', 'Use in case of fire. Non-toxic.', 'Fire Extinguisher'),
    ('Thrushwood Branch', '2024-03-02', '2026-03-05', 'Contains emergency blankets, water, and food supplies.', 'Emergency Kit'),
    
    ('Great Horn Library', '2024-04-01', '2033-07-22', 'For illuminating exits. Test monthly.', 'Emergency Light'),
    ('Great Horn Library', '2024-04-02', '2026-10-30', 'Contains tools and supplies to signal for help.', 'Survival Kit'),
    
    ('North Flicker Library', '2024-05-01', '2033-12-01', 'Use in case of power outages. Charge every six months.', 'Backup Power Supply'),
    ('North Flicker Library', '2024-05-02', '2028-06-15', 'Emergency signaling whistle and mirrors.', 'Signal Kit'),
    
    ('Starlington Library', '2024-06-01', '2033-01-15', 'Use in case of fire. Maintain clear access.', 'Fire Extinguisher'),
    ('Starlington Library', '2024-06-02', '2026-02-25', 'Use for medical emergencies.', 'First Aid Kit');





