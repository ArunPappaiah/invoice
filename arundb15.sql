CREATE TABLE PRODUCT(
Product_Id NUMBER(20) PRIMARY KEY,
Product_Name VARCHAR2(30) NOT NULL,
Categories VARCHAR2(30) NOT NULL,
Price NUMBER(20) NOT NULL,
Gst_Rate NUMBER(20) NOT NULL,
Descriptions VARCHAR2(300) NOT NULL
);
select * from product;
insert into product values(51,'Table','Furniture',5000,18,' Craft Portable and Foldable Study Table for Home and Office | 2 Seater Dining Table Made with Engineered Wood and Powder Coated Finish (2x3ft)');

CREATE TABLE CUSTOMER(
Customer_Id NUMBER(20) PRIMARY KEY,
Customer_Name VARCHAR2(30) NOT NULL,
Phone_Number NUMBER(20) NOT NULL,
Address VARCHAR(50) NOT NULL,
Email VARCHAR(30) NOT NULL,
City VARCHAR(20) NOT NULL
);
select * from customer;
insert into customer values(102,'Kalai',9889767879,'12/127,South street,Ambattur,Chennai-623007','kalai@gmail.com','Chennai');

CREATE TABLE INVOICE(
Invoice_Number VARCHAR(30) PRIMARY KEY,
Invoice_Date DATE NOT NULL,
Customer_Id NUMBER(20) NOT NULL,
Product_Id NUMBER(20) NOT NULL,
Transportation_Charges NUMBER(20),
Total_Amount NUMBER(20) NOT NULL,
FOREIGN KEY(Customer_Id) REFERENCES CUSTOMER(Customer_Id),
FOREIGN KEY(Product_Id) REFERENCES PRODUCT(Product_Id)
);
select * from invoice;
insert into invoice values('3','12-08-2021',100,50,50,5050);

CREATE TABLE INVOICE_DETAILS(
Invoice_Number VARCHAR(30) NOT NULL,
Product_Id NUMBER(20) NOT NULL,
Quantity NUMBER(20) NOT NULL,
Price NUMBER(20) NOT NULL,
GST NUMBER(20) NOT NULL,
Amount NUMBER(20) NOT NULL,
FOREIGN KEY(Invoice_Number) REFERENCES INVOICE(Invoice_Number),
FOREIGN KEY(Product_Id) REFERENCES PRODUCT(Product_Id)
);
select * from invoice_details;
insert into invoice_details values('1',50,5,5000,500,5500);