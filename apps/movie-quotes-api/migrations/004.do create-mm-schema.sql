' 
 Create Maintenance Minder schema
 Tables:
    Vehicle: VIN, Make, Model, Year, Mileage, User_Id, Type, Class, Color, Trim, Engine, Transmission, Fuel, Updated
    Schedule:  Make, Model, Year, Interval, Mandatory, Mtce_Code, Updated
    Maintenance:  Mtce_Id, Mtce_Code, Description
    Event:  VIN, Date, Mtce_Id, Notes, Event_Location, Concerns, Follow_Up, Updated
    User: User_Id, 
    Contact: Id, User_Id, Role, Name, Contact_Location, Parent_User, Type, Realtion, Authorized, Preferred_Contact, Name, Email, Phone, Updated
    Role: Id, Name, Description, Permission

' 
CREATE TABLE IF NOT EXISTS
user
(
  id INTEGER AUTOINCREMENT
  , last TEXT NOT NULL
  , first TEXT NOT NULL
  , first TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS
Contact (
    id varchar(50) PRIMARY KEY GENERATED ALWAYS AS ( ifnull(email,ifnull(mobile,ifnull(other,lower(hex(randomblob(16)))))))
    
);

ALTER TABLE quotes ADD COLUMN movie_id INTEGER DEFAULT 0 REFERENCES movies(id);
