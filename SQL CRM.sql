CREATE DATABASE CRM;
USE CRM;
DROP TABLE STAFF;

-- CREATE TABLE STAFF--
CREATE TABLE STAFF(
SID INT PRIMARY KEY,
SNAME VARCHAR(100),
SROLE VARCHAR(20),
PHONE_NO VARCHAR(100),
EMAIL_ID VARCHAR(100)
);

-- INSERT DATA IN STAFF TABLE--
INSERT INTO staff (SID,SNAME,SROLE,PHONE_NO,EMAIL_ID) VALUES
(1, 'Alice Johnson', 'Manager','9876543210', 'alice.johnson@company.com'),
(2, 'Bob Smith', 'Developer','9123456789', 'bob.smith@company.com'),
(3, 'Carol Thompson', 'Designer','9988776655', 'carol.t@company.com'),
(4, 'David Lee', 'Developer','9871234560', 'david.lee@company.com'),
(5, 'Emma Brown', 'HR','9765432109', 'emma.brown@company.com'),
(6, 'Frank Garcia', 'Tester','9654321098', 'frank.g@company.com'),
(7, 'Grace Williams', 'Developer','9345678901', 'grace.w@company.com'),
(8, 'Henry Davis', 'Manager','9234567890', 'henry.d@company.com'),
(9, 'Irene Martinez', 'Designer','9012345678', 'irene.m@company.com'),
(10, 'Jake Anderson', 'Support','9123451234', 'jake.a@company.com');

-- CREATE CUSTOMER TABLE--
CREATE TABLE CUSTOMER(
CID INT PRIMARY KEY,
CNAME VARCHAR(100),
CPHONE_NO VARCHAR(100),
CEMAIL VARCHAR(100),
AGE INT,
GENDER VARCHAR(20),
ASSIGN_SID INT,
FOREIGN KEY(ASSIGN_SID) REFERENCES STAFF(SID)
);

-- INSERT DATA IN CUSTOMER--
INSERT INTO CUSTOMER (CID, CNAME, CPHONE_NO, CEMAIL, AGE, GENDER, ASSIGN_SID) VALUES
(1, 'Alice Brown', '9876543210', 'alice.brown@email.com', 28, 'Female', 1),
(2, 'Bob Smith', '9123456789', 'bob.smith@email.com', 34, 'Male', 2),
(3, 'Carol Jones', '9988776655', 'carol.jones@email.com', 25, 'Female', 3),
(4, 'David Lee', '9871234560', 'david.lee@email.com', 40, 'Male', 4),
(5, 'Emma Davis', '9765432109', 'emma.davis@email.com', 31, 'Female', 5),
(6, 'Frank Miller', '9654321098', 'frank.miller@email.com', 45, 'Male', 6),
(7, 'Grace Clark', '9345678901', 'grace.clark@email.com', 27, 'Female', 7),
(8, 'Henry Wilson', '9234567890', 'henry.wilson@email.com', 38, 'Male', 8),
(9, 'Irene Martinez', '9012345678', 'irene.m@email.com', 29, 'Female', 9),
(10, 'Jake Taylor', '9123451234', 'jake.taylor@email.com', 33, 'Male', 10),
(11, 'Nina Patel', '9001234567', 'nina.patel@email.com', 26, 'Female', 1),
(12, 'Tom Ray', '9011112222', 'tom.ray@email.com', 36, 'Male', 2),
(13, 'Sophia Allen', '9098765432', 'sophia.allen@email.com', 30, 'Female', 3),
(14, 'Liam Harris', '9023456789', 'liam.h@email.com', 35, 'Male', 4),
(15, 'Olivia Walker', '9087654321', 'olivia.w@email.com', 24, 'Female', 5),
(16, 'Mason White', '9012345679', 'mason.white@email.com', 32, 'Male', 6),
(17, 'Ava Scott', '9321567890', 'ava.scott@email.com', 27, 'Female', 7),
(18, 'Noah Adams', '9201234567', 'noah.adams@email.com', 39, 'Male', 8),
(19, 'Mia Green', '9356789012', 'mia.green@email.com', 28, 'Female', 9),
(20, 'Ethan Hall', '9109876543', 'ethan.hall@email.com', 41, 'Male', 10),
(21, 'Zoe Reed', '9011122334', 'zoe.reed@email.com', 29, 'Female', 1),
(22, 'Logan Lewis', '9012233445', 'logan.lewis@email.com', 37, 'Male', 2),
(23, 'Lily Ward', '9013344556', 'lily.ward@email.com', 30, 'Female', 3),
(24, 'James Cox', '9014455667', 'james.cox@email.com', 42, 'Male', 4),
(25, 'Chloe Ross', '9015566778', 'chloe.ross@email.com', 33, 'Female', 5),
(26, 'Lucas Price', '9016677889', 'lucas.price@email.com', 38, 'Male', 6),
(27, 'Ella Butler', '9017788990', 'ella.butler@email.com', 26, 'Female', 7),
(28, 'Benjamin Perry', '9018899001', 'ben.perry@email.com', 34, 'Male', 8),
(29, 'Aria Barnes', '9019900112', 'aria.barnes@email.com', 25, 'Female', 9),
(30, 'Matthew Wood', '9020011223', 'matthew.wood@email.com', 39, 'Male', 10),
(31, 'Harper Bennett', '9021122334', 'harper.b@email.com', 28, 'Female', 1),
(32, 'Elijah Cook', '9022233445', 'elijah.c@email.com', 36, 'Male', 2),
(33, 'Abigail Powell', '9023344556', 'abigail.p@email.com', 30, 'Female', 3),
(34, 'William Bell', '9024455667', 'william.bell@email.com', 35, 'Male', 4),
(35, 'Sofia Morgan', '9025566778', 'sofia.m@email.com', 27, 'Female', 5);

-- CREATE TABLE CUSTOMER INFO--
CREATE TABLE CUSTOMER_INFO(
INFO_ID INT PRIMARY KEY,
CSTATUS VARCHAR(20),
ADDRESS VARCHAR(100),
CITY VARCHAR(60),
STATE VARCHAR(60),
PINCODE VARCHAR(10),
CID INT,
FOREIGN KEY(CID) REFERENCES CUSTOMER(CID)
);
DROP TABLE CUSTOMER_INFO;

-- INSERT DATA IN CUSTOMER_INFO--
INSERT INTO CUSTOMER_INFO (INFO_ID, CSTATUS, ADDRESS, CITY, STATE, PINCODE, CID) VALUES
(101, 'Active', '123 Park Lane', 'Mumbai', 'Maharashtra', '400001', 1),
(102, 'Inactive', '456 MG Road', 'Delhi', 'Delhi', '110001', 2),
(103, 'Active', '789 Lake View', 'Bangalore', 'Karnataka', '560001', 3),
(104, 'Active', '101 River St', 'Chennai', 'Tamil Nadu', '600001', 4),
(105, 'Active', '202 Green Ave', 'Hyderabad', 'Telangana', '500001', 5),
(106, 'Inactive', '303 Rose Blvd', 'Pune', 'Maharashtra', '411001', 6),
(107, 'Active', '404 Sky St', 'Ahmedabad', 'Gujarat', '380001', 7),
(108, 'Active', '505 Hilltop Rd', 'Kolkata', 'West Bengal', '700001', 8),
(109, 'Inactive', '606 Ocean Dr', 'Bhopal', 'Madhya Pradesh', '462001', 9),
(110, 'Active', '707 Market Lane', 'Jaipur', 'Rajasthan', '302001', 10),
(111, 'Active', '808 Silver St', 'Lucknow', 'Uttar Pradesh', '226001', 11),
(112, 'Active', '909 Pearl Rd', 'Chandigarh', 'Chandigarh', '160001', 12),
(113, 'Inactive', '111 Amber Way', 'Nagpur', 'Maharashtra', '440001', 13),
(114, 'Active', '222 Forest Lane', 'Patna', 'Bihar', '800001', 14),
(115, 'Active', '333 Blossom St', 'Indore', 'Madhya Pradesh', '452001', 15),
(116, 'Inactive', '444 Spring Rd', 'Thiruvananthapuram', 'Kerala', '695001', 16),
(117, 'Active', '555 Sunrise Ave', 'Bhubaneswar', 'Odisha', '751001', 17),
(118, 'Active', '666 Sunset Blvd', 'Guwahati', 'Assam', '781001', 18),
(119, 'Inactive', '777 Coral St', 'Surat', 'Gujarat', '395003', 19),
(120, 'Active', '888 Maple Dr', 'Vijayawada', 'Andhra Pradesh', '520001', 20),
(121, 'Active', '999 Redwood Rd', 'Mysore', 'Karnataka', '570001', 21),
(122, 'Inactive', '121 Rainbow Ave', 'Varanasi', 'Uttar Pradesh', '221001', 22),
(123, 'Active', '232 Emerald St', 'Jodhpur', 'Rajasthan', '342001', 23),
(124, 'Active', '343 Diamond Rd', 'Ranchi', 'Jharkhand', '834001', 24),
(125, 'Inactive', '454 Garnet Way', 'Panaji', 'Goa', '403001', 25),
(126, 'Active', '565 Sapphire Blvd', 'Dehradun', 'Uttarakhand', '248001', 26),
(127, 'Active', '676 Jade St', 'Shimla', 'Himachal Pradesh', '171001', 27),
(128, 'Inactive', '787 Topaz Dr', 'Agartala', 'Tripura', '799001', 28),
(129, 'Active', '898 Ruby Ln', 'Imphal', 'Manipur', '795001', 29),
(130, 'Active', '909 Onyx Ave', 'Itanagar', 'Arunachal Pradesh', '791111', 30),
(131, 'Active', '123 Quartz St', 'Aizawl', 'Mizoram', '796001', 31),
(132, 'Inactive', '234 Crystal Rd', 'Kohima', 'Nagaland', '797001', 32),
(133, 'Active', '345 Opal Dr', 'Gangtok', 'Sikkim', '737101', 33),
(134, 'Inactive', '456 Lava St', 'Silvassa', 'Dadra and Nagar Haveli', '396230', 34),
(135, 'Active', '567 Ash Ave', 'Daman', 'Daman and Diu', '396210', 35);

-- CREATE PRODUCT TABLE--
CREATE TABLE PRODUCT (
  PID INT PRIMARY KEY,
  PNAME VARCHAR(100),
  RATE DECIMAL(10,2),
  QUANTITY INT,
  INCHARGE_SID INT,
  FOREIGN KEY(INCHARGE_SID) REFERENCES STAFF(SID)
);

-- INSERT DATA IN PRODUCT--
INSERT INTO PRODUCT (PID, PNAME, RATE, QUANTITY, INCHARGE_SID) VALUES
(1, 'Laptop Pro 15', 85000.00, 10, 1),
(2, 'Wireless Mouse', 1200.00, 50, 2),
(3, 'Mechanical Keyboard', 4500.00, 30, 3),
(4, 'HD Monitor 24"', 9800.00, 20, 4),
(5, 'External SSD 1TB', 9500.00, 15, 5),
(6, 'Smartphone X', 65000.00, 25, 6),
(7, 'Tablet Mini 8"', 18000.00, 18, 7),
(8, 'Noise Cancelling Headphones', 11500.00, 12, 8),
(9, 'Webcam HD', 2700.00, 28, 9),
(10, 'Wireless Router', 3500.00, 22, 10),
(11, 'Power Bank 20000mAh', 1800.00, 40, 1),
(12, 'Smartwatch Series 6', 22000.00, 19, 2),
(13, 'Gaming Chair', 15500.00, 7, 3),
(14, 'Bluetooth Speaker', 3200.00, 35, 4),
(15, '4K Action Camera', 19500.00, 10, 5),
(16, 'Laser Printer', 13500.00, 8, 6),
(17, 'Office Desk', 8500.00, 6, 7),
(18, 'Laptop Stand', 2100.00, 20, 8),
(19, 'Ergonomic Mousepad', 550.00, 60, 9),
(20, 'Portable Projector', 12500.00, 9, 10),
(21, 'Fingerprint Scanner', 3700.00, 15, 1),
(22, 'USB-C Dock', 4900.00, 13, 2),
(23, 'VR Headset', 28000.00, 5, 3),
(24, 'Graphic Tablet', 6600.00, 11, 4),
(25, 'Tripod Stand', 1900.00, 17, 5),
(26, 'Studio Microphone', 7200.00, 10, 6),
(27, 'Portable Scanner', 5700.00, 8, 7),
(28, 'Network Switch', 4300.00, 14, 8),
(29, 'Barcode Reader', 3900.00, 16, 9),
(30, 'Desktop i5', 48000.00, 7, 10),
(31, 'Graphic Card RTX 3060', 29500.00, 4, 1),
(32, 'Cooling Pad', 1600.00, 23, 2),
(33, 'Laptop Backpack', 2500.00, 27, 3),
(34, 'HDMI Cable 2m', 350.00, 80, 4),
(35, 'Stylus Pen', 1200.00, 21, 5),
(36, 'Ethernet Cable 5m', 500.00, 45, 6),
(37, 'Mini PC', 34000.00, 6, 7),
(38, 'Whiteboard', 2600.00, 10, 8),
(39, 'Tablet Case', 900.00, 31, 9),
(40, 'Smart Plug', 1100.00, 38, 10),
(41, 'All-in-One PC', 59000.00, 5, 1),
(42, 'Wireless Keyboard + Mouse Combo', 2200.00, 19, 2),
(43, 'Laser Range Finder', 4400.00, 8, 3),
(44, 'Smart Bulb', 850.00, 36, 4),
(45, 'Laptop Sleeve 15"', 1300.00, 25, 5),
(46, 'Wi-Fi Extender', 2400.00, 12, 6),
(47, 'Docking Station Pro', 8500.00, 10, 7),
(48, 'Wireless Earbuds', 3800.00, 33, 8),
(49, 'Anti-glare Screen Protector', 300.00, 50, 9),
(50, 'Thermal Label Printer', 10500.00, 6, 10);

-- CREATE PURCHASE TABLE--
CREATE TABLE CUSTOMER_PURCHASE(
PURCHASE_ID INT PRIMARY KEY,
CUSTOMER_INFO_ID INT,
PRODUCT_ID INT,
PURCHASE_DATE DATE,
PAYMENT_MODE VARCHAR(20),
FOREIGN KEY(CUSTOMER_INFO_ID) REFERENCES CUSTOMER_INFO(INFO_ID),
FOREIGN KEY(PRODUCT_ID) REFERENCES PRODUCT(PID)
);

-- INSERT DATA IN PURCHASE TABLE--
INSERT INTO CUSTOMER_PURCHASE (PURCHASE_ID, CUSTOMER_INFO_ID, PRODUCT_ID, PURCHASE_DATE, PAYMENT_MODE) VALUES
(1, 101, 1, '2024-04-01', 'Cash'),
(2, 102, 5, '2024-04-02', 'Card'),
(3, 103, 10, '2024-04-03', 'UPI'),
(4, 104, 3, '2024-04-04', 'NetBanking'),
(5, 105, 6, '2024-04-05', 'Cash'),
(6, 106, 8, '2024-04-06', 'Card'),
(7, 107, 4, '2024-04-07', 'UPI'),
(8, 108, 12, '2024-04-08', 'NetBanking'),
(9, 109, 7, '2024-04-09', 'Cash'),
(10, 110, 1, '2024-04-10', 'UPI'),
(11, 111, 15, '2024-04-11', 'Card'),
(12, 112, 17, '2024-04-12', 'Cash'),
(13, 113, 20, '2024-04-13', 'NetBanking'),
(14, 114, 23, '2024-04-14', 'Card'),
(15, 115, 25, '2024-04-15', 'UPI'),
(16, 116, 30, '2024-04-16', 'Cash'),
(17, 117, 33, '2024-04-17', 'Card'),
(18, 118, 35, '2024-04-18', 'UPI'),
(19, 119, 38, '2024-04-19', 'Cash'),
(20, 120, 40, '2024-04-20', 'NetBanking'),
(21, 121, 44, '2024-04-21', 'Card'),
(22, 122, 47, '2024-04-22', 'UPI'),
(23, 123, 50, '2024-04-23', 'Cash'),
(24, 124, 41, '2024-04-24', 'Card'),
(25, 125, 31, '2024-04-25', 'UPI'),
(26, 126, 22, '2024-04-26', 'NetBanking'),
(27, 127, 13, '2024-04-27', 'Card'),
(28, 128, 19, '2024-04-28', 'Cash'),
(29, 129, 29, '2024-04-29', 'UPI'),
(30, 130, 9, '2024-04-30', 'NetBanking'),
(31, 101, 16, '2024-05-01', 'UPI'),
(32, 102, 11, '2024-05-02', 'Card'),
(33, 103, 2, '2024-05-03', 'Cash'),
(34, 104, 24, '2024-05-04', 'UPI'),
(35, 105, 6, '2024-05-05', 'NetBanking'),
(36, 106, 14, '2024-05-06', 'Card'),
(37, 107, 36, '2024-05-07', 'Cash'),
(38, 108, 27, '2024-05-08', 'UPI'),
(39, 109, 43, '2024-05-09', 'Card'),
(40, 110, 18, '2024-05-10', 'Cash');

-- CREATE CUSTOMER_ORDER TABLE--
CREATE TABLE CUSTOMER_ORDER(
ORDER_ID INT PRIMARY KEY,
ORDER_DATE DATE,
DELIVARY_DATE DATE,
ORDER_STATUS VARCHAR(30),
CUSTOMER_INFO_ID INT,
ASSIGN_SID INT,
FOREIGN KEY(CUSTOMER_INFO_ID) REFERENCES CUSTOMER_INFO(INFO_ID),
FOREIGN KEY(ASSIGN_SID) REFERENCES STAFF(SID)
); 

-- INSERT DATA IN CUSTOMER_ORDER TABLE--
INSERT INTO CUSTOMER_ORDER (ORDER_ID, ORDER_DATE, DELIVARY_DATE, ORDER_STATUS, CUSTOMER_INFO_ID, ASSIGN_SID) VALUES
(1, '2024-04-01', '2024-04-03', 'Pending', 101, 1),
(2, '2024-04-02', '2024-04-04', 'Shipped', 102, 2),
(3, '2024-04-03', '2024-04-05', 'Delivered', 103, 3),
(4, '2024-04-04', '2024-04-07', 'Cancelled', 104, 4),
(5, '2024-04-05', '2024-04-07', 'Delivered', 105, 5),
(6, '2024-04-06', '2024-04-08', 'Shipped', 106, 6),
(7, '2024-04-07', '2024-04-10', 'Pending', 107, 7),
(8, '2024-04-08', '2024-04-11', 'Delivered', 108, 8),
(9, '2024-04-09', '2024-04-11', 'Pending', 109, 9),
(10, '2024-04-10', '2024-04-12', 'Shipped', 110, 10),
(11, '2024-04-11', '2024-04-13', 'Delivered', 111, 1),
(12, '2024-04-12', '2024-04-14', 'Pending', 112, 2),
(13, '2024-04-13', '2024-04-15', 'Cancelled', 113, 3),
(14, '2024-04-14', '2024-04-16', 'Delivered', 114, 4),
(15, '2024-04-15', '2024-04-18', 'Shipped', 115, 5),
(16, '2024-04-16', '2024-04-18', 'Delivered', 116, 6),
(17, '2024-04-17', '2024-04-19', 'Shipped', 117, 7),
(18, '2024-04-18', '2024-04-20', 'Delivered', 118, 8),
(19, '2024-04-19', '2024-04-21', 'Pending', 119, 9),
(20, '2024-04-20', '2024-04-23', 'Cancelled', 120, 10),
(21, '2024-04-21', '2024-04-24', 'Pending', 121, 1),
(22, '2024-04-22', '2024-04-25', 'Delivered', 122, 2),
(23, '2024-04-23', '2024-04-26', 'Shipped', 123, 3),
(24, '2024-04-24', '2024-04-27', 'Delivered', 124, 4),
(25, '2024-04-25', '2024-04-28', 'Pending', 125, 5),
(26, '2024-04-26', '2024-04-29', 'Delivered', 126, 6),
(27, '2024-04-27', '2024-04-30', 'Cancelled', 127, 7),
(28, '2024-04-28', '2024-05-01', 'Pending', 128, 8),
(29, '2024-04-29', '2024-05-02', 'Delivered', 129, 9),
(30, '2024-04-30', '2024-05-03', 'Shipped', 130, 10);

-- CREATE LEADS TABLE--
CREATE TABLE LEADS (
  LEAD_ID INT PRIMARY KEY,
  LEAD_NAME VARCHAR(100),
  EMAIL VARCHAR(100),
  PHONE_NO VARCHAR(15),
  SOURCES VARCHAR(50),  -- e.g., Website, Referral, Social Media, etc.
  STATUS ENUM('New', 'Contacted', 'Qualified', 'Converted', 'Lost'),
  ASSIGNED_TO INT,     -- references STAFF(SID)
  CREATED_DATE DATE,
  FOREIGN KEY (ASSIGNED_TO) REFERENCES STAFF(SID)
);

-- INSERT DATA IN LEADS TABLE--
INSERT INTO LEADS (LEAD_ID, LEAD_NAME, EMAIL, PHONE_NO, SOURCES, STATUS, ASSIGNED_TO, CREATED_DATE) VALUES
(1, 'Ravi Kumar', 'ravi.k@example.com', '9876543210', 'Website', 'New', 1, '2024-04-01'),
(2, 'Asha Reddy', 'asha.r@example.com', '9898989898', 'Referral', 'Contacted', 2, '2024-04-02'),
(3, 'Mohit Jain', 'mohit.j@example.com', '9001234567', 'Social Media', 'Qualified', 3, '2024-04-03'),
(4, 'Neha Sharma', 'neha.s@example.com', '9123456780', 'Website', 'New', 4, '2024-04-04'),
(5, 'Karan Mehta', 'karan.m@example.com', '9988776655', 'Event', 'Contacted', 5, '2024-04-05'),
(6, 'Priya Das', 'priya.d@example.com', '9556655443', 'Referral', 'Qualified', 6, '2024-04-06'),
(7, 'Ankit Roy', 'ankit.r@example.com', '9988123456', 'Website', 'Converted', 7, '2024-04-07'),
(8, 'Sneha Verma', 'sneha.v@example.com', '9334455667', 'Social Media', 'Lost', 8, '2024-04-08'),
(9, 'Deepak Nair', 'deepak.n@example.com', '9112233445', 'Referral', 'Qualified', 9, '2024-04-09'),
(10, 'Meena Singh', 'meena.s@example.com', '9090909090', 'Website', 'Contacted', 10, '2024-04-10'),
(11, 'Ajay Thakur', 'ajay.t@example.com', '9011122233', 'Event', 'New', 1, '2024-04-11'),
(12, 'Sonal Kapoor', 'sonal.k@example.com', '9900112233', 'Social Media', 'Contacted', 2, '2024-04-12'),
(13, 'Vikas Rana', 'vikas.r@example.com', '9876541111', 'Website', 'Lost', 3, '2024-04-13'),
(14, 'Divya Nair', 'divya.n@example.com', '9998887776', 'Referral', 'Qualified', 4, '2024-04-14'),
(15, 'Rajeev Pillai', 'rajeev.p@example.com', '9099988776', 'Event', 'New', 5, '2024-04-15'),
(16, 'Tanya Joshi', 'tanya.j@example.com', '9787878787', 'Website', 'Converted', 6, '2024-04-16'),
(17, 'Kunal Arora', 'kunal.a@example.com', '9223344556', 'Social Media', 'Qualified', 7, '2024-04-17'),
(18, 'Geeta Yadav', 'geeta.y@example.com', '9887766554', 'Referral', 'Lost', 8, '2024-04-18'),
(19, 'Amit Desai', 'amit.d@example.com', '9665544332', 'Website', 'Contacted', 9, '2024-04-19'),
(20, 'Lavanya Rao', 'lavanya.r@example.com', '9111199991', 'Event', 'New', 10, '2024-04-20');

-- CREATE ACTIVITY TABLE--
CREATE TABLE ACTIVITY (
  ACTIVITY_ID INT PRIMARY KEY,
  ACTIVITY_TYPE VARCHAR(50),          -- e.g., 'Call', 'Email', 'Meeting', 'Follow-up'
  ACTIVITY_DATE DATE,
  DESCRIPTION TEXT,
  LEAD_ID INT,                        -- Related to LEADS table
  ASSIGNED_TO INT,                    -- Related to STAFF(SID)
  STATUS varchar(50),
  FOREIGN KEY (LEAD_ID) REFERENCES LEADS(LEAD_ID),
  FOREIGN KEY (ASSIGNED_TO) REFERENCES STAFF(SID)
);

-- INSERT DATA IN ACTIVITY TABLE--
INSERT INTO ACTIVITY (ACTIVITY_ID, ACTIVITY_TYPE, ACTIVITY_DATE, DESCRIPTION, LEAD_ID, ASSIGNED_TO, STATUS) VALUES
(1, 'Call', '2024-04-01', 'Initial contact made', 1, 1, 'Completed'),
(2, 'Email', '2024-04-02', 'Sent company brochure', 2, 2, 'Completed'),
(3, 'Follow-up', '2024-04-03', 'Scheduled follow-up call', 3, 3, 'Scheduled'),
(4, 'Meeting', '2024-04-04', 'Product demo scheduled', 4, 4, 'Scheduled'),
(5, 'Call', '2024-04-05', 'Discussed pricing options', 5, 5, 'Completed'),
(6, 'Email', '2024-04-06', 'Shared pricing sheet', 6, 6, 'Completed'),
(7, 'Meeting', '2024-04-07', 'On-site demo done', 7, 7, 'Completed'),
(8, 'Call', '2024-04-08', 'Client unavailable', 8, 8, 'Cancelled'),
(9, 'Follow-up', '2024-04-09', 'Re-attempt contact', 9, 9, 'Scheduled'),
(10, 'Email', '2024-04-10', 'Sent follow-up details', 10, 10, 'Completed'),
(11, 'Meeting', '2024-04-11', 'Technical discussion held', 11, 1, 'Completed'),
(12, 'Call', '2024-04-12', 'Final negotiation', 12, 2, 'Scheduled'),
(13, 'Follow-up', '2024-04-13', 'Awaiting decision', 13, 3, 'Scheduled'),
(14, 'Email', '2024-04-14', 'Sent reminder email', 14, 4, 'Completed'),
(15, 'Call', '2024-04-15', 'Post-sale support call', 15, 5, 'Completed');

-- CREATE CUSTOMER_SUPPORT TABLE--
CREATE TABLE CUSTOMER_SUPPORT (
  TICKET_ID INT PRIMARY KEY,
  SUBJECT VARCHAR(100),
  DESCRIPTION TEXT,
  CREATED_DATE DATE,
  RESOLVED_DATE DATE,
  STATUS ENUM('Open', 'In Progress', 'Resolved', 'Closed'),
  PRIORITY ENUM('Low', 'Medium', 'High', 'Urgent'),
  CUSTOMER_ID INT,         -- References CUSTOMER(CID)
  ASSIGNED_TO INT,         -- References STAFF(SID)
  FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(CID),
  FOREIGN KEY (ASSIGNED_TO) REFERENCES STAFF(SID)
);

-- INSERT DATA IN CUSTOMER_SUPPORT TABLE--
INSERT INTO CUSTOMER_SUPPORT (TICKET_ID, SUBJECT, DESCRIPTION, CREATED_DATE, RESOLVED_DATE, STATUS, PRIORITY, CUSTOMER_ID, ASSIGNED_TO) VALUES
(1, 'Login Issue', 'Unable to log in with correct credentials.', '2024-04-01', '2024-04-02', 'Resolved', 'Medium', 1, 1),
(2, 'Payment Failure', 'Payment not going through for order #1021.', '2024-04-02', '2024-04-03', 'Closed', 'High', 2, 2),
(3, 'Product Missing', 'Received partial order.', '2024-04-03', NULL, 'Open', 'Urgent', 3, 3),
(4, 'Damaged Product', 'Item received is damaged.', '2024-04-04', '2024-04-06', 'Resolved', 'High', 4, 4),
(5, 'Wrong Billing', 'Charged twice for a single order.', '2024-04-05', NULL, 'In Progress', 'Medium', 5, 5),
(6, 'App Crash', 'App crashes on iOS login screen.', '2024-04-06', '2024-04-07', 'Closed', 'High', 6, 6),
(7, 'Delayed Delivery', 'Order delayed by 3 days.', '2024-04-07', NULL, 'Open', 'Low', 7, 7),
(8, 'Request Refund', 'Refund requested for cancelled item.', '2024-04-08', '2024-04-10', 'Resolved', 'Medium', 8, 8),
(9, 'Update Address', 'Customer wants to update delivery address.', '2024-04-09', NULL, 'In Progress', 'Low', 9, 9),
(10, 'Feedback Submission', 'Wants to provide feedback on service.', '2024-04-10', '2024-04-10', 'Closed', 'Low', 10, 10),
(11, 'Unable to Track Order', 'Tracking page not showing updates.', '2024-04-11', NULL, 'Open', 'Medium', 11, 1),
(12, 'Warranty Claim', 'Requesting warranty replacement.', '2024-04-12', '2024-04-15', 'Resolved', 'High', 12, 2),
(13, 'Invoice Request', 'Needs invoice for corporate claim.', '2024-04-13', NULL, 'In Progress', 'Medium', 13, 3),
(14, 'Technical Support', 'Issue with setting up the device.', '2024-04-14', NULL, 'Open', 'High', 14, 4),
(15, 'Change Phone Number', 'Needs to update registered phone number.', '2024-04-15', '2024-04-16', 'Resolved', 'Low', 15, 5);

SELECT * FROM STAFF;
SELECT* FROM CUSTOMER;
SELECT * FROM CUSTOMER_INFO; 
SELECT* FROM PRODUCT;
SELECT* FROM CUSTOMER_PURCHASE;
SELECT* FROM CUSTOMER_ORDER;
SELECT* FROM LEADS;
SELECT* FROM ACTIVITY;
SELECT*FROM CUSTOMER_SUPPORT;

-- 1 TOTAL CUSTOMER FOR EACH STAFF--
SELECT S.SID,S.SNAME,COUNT(C.CID) 
FROM STAFF AS S 
INNER JOIN 
CUSTOMER AS C 
ON S.SID=C.ASSIGN_SID GROUP BY SID;

-- 2 ASSIGNING CUSTOMERS IN STAFF_ID=2-- 
SELECT S.SID,S.SNAME,C.CID,C.CNAME 
FROM STAFF AS S 
INNER JOIN CUSTOMER AS C 
ON S.SID=2=C.ASSIGN_SID;

-- 3 CUSTOMER ADDRESS WITH ASSIGNING STAFF ID--
SELECT S.SID,C.CID,C.CNAME,CI.ADDRESS,CI.PINCODE 
FROM STAFF AS S INNER JOIN
CUSTOMER AS C ON S.SID=C.ASSIGN_SID INNER JOIN CUSTOMER_INFO AS CI 
ON C.CID=CI.CID;

-- 4 LAST PURCHEAS DATE FOR CUSTOMER--
SELECT C.CNAME,P.PURCHASE_DATE,CI.INFO_ID
FROM CUSTOMER_PURCHASE AS P
INNER JOIN CUSTOMER_INFO AS CI ON P.CUSTOMER_INFO_ID=CI.INFO_ID 
INNER JOIN CUSTOMER AS C ON CI.CID=C.CID;

-- 5 COUNT OF PURCHASE BY CUSTOMER--
SELECT COUNT(C.CNAME),CI.INFO_ID
FROM CUSTOMER_PURCHASE AS P
INNER JOIN CUSTOMER_INFO AS CI ON P.CUSTOMER_INFO_ID=CI.INFO_ID
INNER JOIN CUSTOMER AS C ON CI.CID=C.CID GROUP BY CI.INFO_ID;

 -- 6 NAME OF PURCHASED PRODUCT AND CUSTOMER--
SELECT COUNT(C.CNAME),P.PID,P.PNAME 
FROM CUSTOMER_PURCHASE AS PU 
INNER JOIN PRODUCT AS P ON PU.PRODUCT_ID=P.PID 
INNER JOIN CUSTOMER_INFO AS CI ON PU.CUSTOMER_INFO_ID=CI.INFO_ID
INNER JOIN CUSTOMER AS C ON CI.CID=C.CID GROUP BY P.PID;

-- 7 CUSTOMER NAME LIST OF BUY PRODUCT--
SELECT C.CID,C.CNAME,P.PID FROM CUSTOMER_PURCHASE AS PU 
INNER JOIN PRODUCT AS P ON PU.PRODUCT_ID=P.PID
INNER JOIN CUSTOMER_INFO AS CI ON PU.CUSTOMER_INFO_ID=CI.INFO_ID
INNER JOIN CUSTOMER AS C ON CI.CID=C.CID ORDER BY P.PID;

-- 8 NAME LIST OF ONLINE ORDER WITH ASSIGN STAFF NAME--
SELECT O.ORDER_ID,C.CNAME,S.SNAME FROM CUSTOMER_ORDER AS O 
RIGHT JOIN CUSTOMER_INFO AS CI ON O.CUSTOMER_INFO_ID=CI.INFO_ID
LEFT JOIN CUSTOMER AS C ON CI.CID=C.CID
RIGHT JOIN STAFF AS S ON O.ASSIGN_SID=S.SID;

-- 9 ASSIGN ORDER COUNT OF EACH STAFF--
SELECT COUNT(C.CNAME),S.SNAME FROM CUSTOMER_ORDER AS O 
RIGHT JOIN CUSTOMER_INFO AS CI ON O.CUSTOMER_INFO_ID=CI.INFO_ID
LEFT JOIN CUSTOMER AS C ON CI.CID=C.CID
RIGHT JOIN STAFF AS S ON O.ASSIGN_SID=S.SID GROUP BY S.SNAME;

-- 10 ORDER STATUS PENDING LIST WITH CUSTOMER AND STAFF NAME--
SELECT C.CNAME,S.SNAME,O.ORDER_STATUS FROM CUSTOMER_ORDER AS O
RIGHT JOIN CUSTOMER_INFO AS CI ON O.CUSTOMER_INFO_ID=CI.INFO_ID
LEFT JOIN CUSTOMER AS C ON CI.CID=C.CID
RIGHT JOIN STAFF AS S ON O.ASSIGN_SID=S.SID WHERE O.ORDER_STATUS="PENDING" ORDER BY S.SNAME;

-- 11 LIST OF DELIVERY ITEM--
SELECT C.CNAME,S.SNAME,O.ORDER_STATUS,DELIVARY_DATE FROM CUSTOMER_ORDER AS O
RIGHT JOIN CUSTOMER_INFO AS CI ON O.CUSTOMER_INFO_ID=CI.INFO_ID
LEFT JOIN CUSTOMER AS C ON CI.CID=C.CID
RIGHT JOIN STAFF AS S ON O.ASSIGN_SID=S.SID WHERE O.ORDER_STATUS="DELIVERED" ORDER BY DELIVARY_DATE;

-- 12 LIST OF LESDS STATUS=NEW--
SELECT L.LEAD_NAME,L.STATUS,S.SNAME,S.SID FROM LEADS AS L 
INNER JOIN STAFF AS S ON L.ASSIGNED_TO=S.SID WHERE L.STATUS="NEW" ORDER BY SID;

-- 13 COUNT OF TOTAL STATUS LIST =5--
SELECT COUNT(L.LEAD_NAME) AS TOTAL,L.STATUS FROM LEADS AS L 
INNER JOIN STAFF AS S ON L.ASSIGNED_TO=S.SID GROUP BY L.STATUS HAVING TOTAL=5;

-- 14 LIST OF CUSTOMER SUPPORT STATUS--
SELECT SUP.TICKET_ID,SUP.CREATED_DATE,SUP.STATUS,C.CNAME,S.SNAME FROM CUSTOMER_SUPPORT AS SUP 
RIGHT JOIN CUSTOMER AS C ON SUP.CUSTOMER_ID=C.CID
INNER JOIN STAFF AS S ON SUP.ASSIGNED_TO=S.SID ORDER BY SUP.TICKET_ID;

-- 15 LIST OF OLD CREATED_DATE TICKETS AND STATUS OPEN-- 
SELECT SUP.TICKET_ID,SUP.CREATED_DATE,SUP.STATUS,C.CNAME,S.SNAME FROM CUSTOMER_SUPPORT AS SUP 
RIGHT JOIN CUSTOMER AS C ON SUP.CUSTOMER_ID=C.CID
INNER JOIN STAFF AS S ON SUP.ASSIGNED_TO=S.SID 
WHERE (SUP.STATUS="OPEN" AND SUP.CREATED_DATE>"2024-04-11") ORDER BY SUP.TICKET_ID;

-- 16 LIST OLD TIKET STATUS OPEN IN CUSTOMER ADDRESS--
SELECT SUP.TICKET_ID,SUP.CREATED_DATE,SUP.STATUS,C.CNAME,S.SNAME,CI.ADDRESS FROM CUSTOMER_SUPPORT AS SUP 
RIGHT JOIN CUSTOMER AS C ON SUP.CUSTOMER_ID=C.CID
RIGHT JOIN CUSTOMER_INFO AS CI ON CI.CID=C.CID
INNER JOIN STAFF AS S ON SUP.ASSIGNED_TO=S.SID WHERE (SUP.STATUS="OPEN" AND SUP.CREATED_DATE>"2024-04-11") ORDER BY SUP.TICKET_ID;

-- 17 CREATE VIEW IN OLD DATE TICKET STATUS OPEN WITH CUSTOMER ADDRESS--
CREATE VIEW TICKET_STATUS_OPEN_OLD_DATE AS
SELECT SUP.TICKET_ID,SUP.CREATED_DATE,SUP.STATUS,C.CNAME,S.SNAME,CI.ADDRESS FROM CUSTOMER_SUPPORT AS SUP 
RIGHT JOIN CUSTOMER AS C ON SUP.CUSTOMER_ID=C.CID
RIGHT JOIN CUSTOMER_INFO AS CI ON CI.CID=C.CID
INNER JOIN STAFF AS S ON SUP.ASSIGNED_TO=S.SID WHERE (SUP.STATUS="OPEN" AND SUP.CREATED_DATE>"2024-04-11") ORDER BY SUP.TICKET_ID;

-- 18 CALL VIEW--
SELECT * FROM TICKET_STATUS_OPEN_OLD_DATE;