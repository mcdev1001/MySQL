Devon McDermott

CMSC 508
Public Library Database
Introduction:
A rural county in Virginia is receiving a large grant that will allow the significant expansion of its public library
system. This means a great deal to the community and taxpayers are demanding a state of the art updated
system. A new database must be designed for the libraries to keep track of all the information coming in and
out including employees, library members, media, equipment etc. Each branch will be transformative for its
community
Why Expanding the Library System Matters:
The library is a community hub offering resources beyond reading materials. It serves as a place for learning,
social interaction, and personal enrichment. Libraries contribute to a healthy community ecosystem.
The county aims to enhance library facilities. This involves using technology to streamline access to resources
and services, with an emphasis on accessibility. By providing access to information, facilitating educational
activities, and employment opportunities the new library branches will make a big impact on life in their
communities. The library system expansion will also foster inclusivity. Libraries historically serve as safe
spaces where individuals from diverse backgrounds can gather. This will promote a sense of welcome,
diversity and belonging. By rebuilding library infrastructure, the county will meet the needs of its citizens
through such social equity and engagement.
Library Branch Management:
Each library branch is a hub of community engagement. The database must help keep essential details of
branches, including name, address, city, state, postal code, email addresses, and phone numbers.
Employee Administration:
The backbone of the library system are the people who work there, with roles ranging from librarians to
technicians. The database will include employee data, including employee ID, job title, name, Social Security
Number (SSN), and salary information. This will facilitate efficient HR management and streamline payroll
processes.
Certification Tracking:
Library staff typically pursue certifications relevant to their roles. The system will record certification dates
and titles. This ensures compliance with industry standards and staff development.
Membership Management:
Membership provides access to an array of resources. The database will include member IDs, contact details,
names, and SSNs. This enables easy membership administration and personalized engagement.
Media:
A member may access many different varieties of media. Member access is kept track of by date/time of
access, due date, and date/time end of access. This way we can keep track of all activity of media used by
members. Media falls into two types: rental or non rental media. Each media item may have attributes such as:
Item ID, creation date, genre(s), title, studio, publisher, author(s), and artist(s). This ensures exact tracking of
circulation activities and resource allocation.
Equipment and Supplies Tracking:
Beyond media, the library has service equipment. Service equipment the library may own could be computers,
printers or scanners. Each piece of equipment has a serial number. In addition the library owns various
emergency equipment items. These items must be kept track of by item ID, item name, directions for use,
item stock date, and item expiration date. The library also owns supplies such as printer paper, pens, pencils
etc. which are kept track of by item ID, stock date and quantity. This helps to facilitate routine restocking and
optimizing resources.
Event Organization:
A library is an enriching place which hosts many special events such as story time for kids. The database will
facilitate management of events. These events may be categorized as kids, teen or adult events. Each event is
organized by date and event title and will include a description of the event. This will support appropriate
event promotion and engagement of members.
Our Vision:
A new database system will bring to the community a modern, vibrant library ecosystem. By addressing the
needs of library management, employees, membership, media, supplies inventory, and event coordination, this
system will help to manage an enriching community hub that benefits the county and its residents.
Library Branch
postal code
state
city
Branch
name
Address
Staff
works Staff ID
email
phone
Member
membership
MemberID
name
SSN
Phone
Staff Certifications
Emergency
Equipment
Title
Name Item ID
Earns
Media
Owns
ID #
Member Access
Title
Non-Rental Media
Creation Date
Studio
Service Equipment Serial #
Computers Printers Scanners
Use
Author
Publisher
Artist
Salary
First Name
SSN
Paper Count
Date/time of
access
Due date
Rental Media
Genre
Date/Time end of
access
email
expiration
stock date date
directions for
use
date earned
Supplies
Item ID
stock date
Quantity
Events
Kids teen adult
Event ID
Event title
Event
description
Hosts
Name
Last
Name
Job Title
Staff Member
Event
DateTime
Stock Date
Quantity
Tables and Functional Dependencies (FD)
Library Branch (Branch Name: [PK], Email: [not null, unique], City: [not null], State: [not null],
Postal Code: [not null])
FD:
Branch Name-> Email, City, State, Postal Code
Email-> Branch Name, City, State, Postal Code
CK: Branch Name, Email
In BCNF, 4NF
Library Numbers (Phone ID: [PK], Branch Name: [FK, not null], Phone Number: [unique, not
null], Department)
FD:
Phone ID-> Phone Number, Branch Name, Department
Phone Number-> Phone ID, Branch Name, Department
CK: Phone ID, Phone Number
In BCNF, 4NF
Member (Member ID: [PK], Email: [not null], SSN: [unique, not null], First Name: [not null], Last
Name: [not null], Branch Name: [FK, not null])
FD:
Member ID-> Email, SSN, First Name, Last Name, Branch Name
SSN-> Member ID, Email, First Name, Last Name, Branch Name
Email-> Member ID, SSN, First Name, Last Name, Branch Name
CK’s: Member ID, SSN, Email
In BCNF, 4NF
Member Number (Phone ID: [PK], Member ID: [FK, not null], Phone Number: [unique, not
null])
FD:
Phone ID-> MemberID, Phone Number
Member ID-> Phone ID, Phone Number
CK’s: Phone ID, Member ID
In BCNF, 4NF
Member Access (Member Access ID: [PK, FK1], Media Selection: [PK, FK2], Access Date: [not
null], Access Time: [not null], Due Date, End of Access Date:[not null], End of Access Time:[not
null])
FD:
Member Access ID-> Media Selection, Access Date, Access Time, Due Date, End of Access Date,
End of Access Time
Media Selection-> Member Access ID, Access Date, Access Time, Due Date, End of Access Date,
End of Access Time
CK: Member Access ID, Media Selection
In BCNF, 4NF
Media (Media ID: [PK], Title: [not null], Creation Date, Studio, Publisher, Rentable: [not null])
FD:
Media ID-> Title, Creation Date, Studio, Publisher, Rentable
CK: Media ID
In BCNF, 4NF
Genre(Code: [PK], Genre: [unique, not null])
FD:
Code-> Genre
CK: Code
In BCNF, 4NF
Media Genre (Media ID: [PK, FK1], Genre Code: [PK, FK2])
FD:
Media ID-> Genre Code
Genre Code->Media ID
CK: Media ID, Genre Code
In BCNF, 4NF
Author (ID: [PK], First Name: [not null], Last Name: [not null])
FD:
ID->First Name, Last Name
CK: ID
In BCNF, 4NF
Author Media (Author ID: [PK, FK1], Media ID: [PK, FK2])
FD:
Author ID: Media ID
Media ID-> Author ID
CK: Author ID, Media ID
In BCNF, 4NF
Artist (ID: [PK], First Name, Last Name: [not null], Group Name)
FD:
ID-> First Name, Last Name, Group Name
CK: ID
In BCNF, 4NF
Artist Media (Artist ID: [PK, FK1], Media ID: [PK, FK2])
FD:
Artist ID-> Media ID
Media ID-> Artist ID
CK: Artist ID, Media ID
In BCNF, 4NF
Staff (Staff ID: [PK], Branch Name: [FK, not null], SSN: [unique, not null], Salary: [not null], First
Name: [not null], Last Name: [not null], Job Title [not null])
FD:
Staff ID-> Branch Name, SSN, Salary, First Name, Last Name, Job Title
SSN-> Staff ID, Branch Name, Salary, First Name, Last Name, Job Title
CK: Staff ID, SSN
In BCNF, 4NF
Certifications (Title: [PK], Staff Member: [FK, not null], Date Earned:[not null])
FD:
Title-> Staff Member, Date Earned
CK: Title
In BCNF, 4NF
Emergency Equipment (EE ID: [PK], Branch Name: [FK1], Name:[not null], Stock Date: [not
null], Expiration Date: [not null], Directions)
FD’s:
EE_ID-> Branch name, Name, Stock Date, Expiration Date, Directions
Branch Name-> EE ID, Name, Stock Date,Expiration Date, Directions
CK: EE ID, Branch Name
In BCNF, 4NF
Supplies (Supply ID: [PK], Branch Name: [FK, not null], Name: [not null], Stock Date: [not null],
Quantity: [not null])
FD:
Supply ID-> Branch Name, Name, Stock Date, Quantity
CK: Supply ID
In BCNF, 4NF
Service Equipment (Equipment Serial Num: [PK], Branch Name: [FK, not null], Stock Date: [not
null], Quantity: [not null])
FD:
Equipment Serial Num-> Branch Name, Stock Date, Quantity
CK: Equipment Serial Num
In BCNF, 4NF
Computer (Equipment Serial Num: [PK, FK])
FD:
∅
In BCNF, 4NF
Printer (Equipment Serial Numl: [PK, FK], Paper Count)
FD:
Equipment Serial Num-> Paper Count
CK: Equipment Serial Num
In BCNF, 4NF
Scanner (Equipment Serial Num: [PK, FK])
FD:
∅
In BCNF, 4NF
Events (Event ID: [PK], Branch Name: [FK1, not null], Title: [not null], Description, Event Date:
[not null], Event Start Time: [not null], Event End Time: [not null])
FD:
Event ID-> Branch Name, Title, Description, Event Date, Event start time, Event end time
CK: Event ID
In BCNF, 4NF
Event Ages (Event ID: [PK, FK1], Age Code: [PK, FK2])
FD:
Event ID-> Age Code
Age Code-> Event ID
CK: Event ID, Age Code
In BCNF, 4NF
Ages (Age Code: [PK], Description: [unique, not null])
FD:
Age Code-> Description
CK: Age Code
In BCNF, 4NF
Emergency Equipment
PK EE_ID
FK1 Branch_Name: Not
Null
Name: Not Null
Stock Date: Not Null
Expiration Date: Not
Null
Directions
Library Numbers
PK Phone ID
FK1 Branch Name: Not
Null
Department
Phone
Number:Unique, Not
Null
Staff
PK StaffID
FK1 Branch_Name: Not
Null
SSN: Unique, Not
Null
Salary: Not Null
First Name: Not Null
Last Name: Not Null
Job Title: Not Null
Certifications
PK Title
PK,FK1 Staff Member
Date Earned:Not
Null
Library Branch
PK Branch_Name
Email: unique, Not
Null
City:Not Null
State:Not Null
Postal Code:Not Null
Member
PK Member_ID
Email: Not Null
SSN: Unique Not
Null
First Name: Not Null
Last Name: Not Null
FK1 Branch Name: Not
Null
Member Number
PK Phone ID
FK Member ID: Not Null
Phone Number:
Unique, Not Null
Media Genre
PK,FK1 Media ID
PK,FK2 Genre Code
Genre
PK Code
Genre: Unique, Not
Null
Member Access
PK, FK1 Member Access_ID
PK,FK2 Media Selection
Access Date: Not
Null
Access Time: Not
Null
Due Date
End of Access Date:
not null
End of Access Time:
not null
Service Equipment
PK Equipment_Serial Num
FK1 Branch Name: Not Null
Stock Date: Not Null
Quantity: Not Null
Scanner
PK,FK Equipment_Serial
Num
Computer
PK,FK Equipment_Serial
Num
Events
PK Event ID
FK1 Branch Name: Not
Null
Title: Not Null
Description
Event Date: Not Null
Event Start Time:Not
Null
Event End Time: Not
Null
Event Ages
PK,FK1 Event ID
PK,FK2 Age Code
Ages
PK,FK Age Code
Description: Unique,
Not Null
Artist
PK ID
First Name:
Last Name:
Group Name
Author Media
PK, FK1 Author ID
PK, FK2 Media ID
Artist Media
PK, FK1 Artist ID
PK, FK2 Media ID
Supplies
PK Supply_ID
FK1 Branch_Name: Not
Null
Name: Not Null
Stock Date: Not Null
Quantity: Not Null
Printer
PK,FK Equipment_Serial
Num
Paper Count
Media
PK Media ID
Creation Date
Title: Not Null
Studio
Publisher
Rentable: Not Null
Author
PK ID
First Name: Not Null
Last Name: Not Null
