CREATE TABLE child(
child_id INT PRIMARY KEY AUTO_INCREMENT,
child_name VARCHAR(50),
parent_id INT FOREIGN KEY(parent_id) REFERRENCES parent,
blood group VARCHAR(20),
doctor_id INT FOREIGN KEY(doctor_id) REFERRENCES doctor
);
INSERT INTO child(child-id,child_name,parent_id,blood group,doctor_id);
VALUES(1,'Riya',2,'O+',2),
(2,'Dola',3,'B+',2),
(3,'Priya',4,'AB+',1),
(4,'Mina',1,'O+',1)


CREATE TABLE parent(
parent_id INT PRIMARY KEY AUTO_INCREMENT,
parent_name VARCHAR(50),
contact VARCHAR(20),
address TEXT,
center-id INT FOREIGN KEY(center_id) REFERRENCES(child_care_center)
);
INSERT INTO parent(parent_id,parent_name,contact,address,center-id);
VALUES
(1,'Md.Hasan','Dhaka',0170965777),
(2,'Md.Kamal','Dhaka',0167676787),
(3,'Mrs.Mariyam','Barishal',013954676),
(4,'Md.Rony','Rajshahi',01326463484)

CREATE TABLE child_care_center(
center_id INT PRIMARY KEY AUTO_INCREMENT,
center_name VARCHAR(20),
address VARCHAR(20),

INSERT INTO child_care_center(center_id,name,room_no,address)

VALUES(1,'Greenlife',401,3rd_ Floor),
(2,'Kidsgarden',301,4th_Floor)

CREATE TABLE doctor(
doctor_id INT PRIMARY KEY AUTO_INCREMENT,
doctor_name VARCHAR(50),
duty_time VARCHAR(50),
contact VARCHAR(20),
address VARCHAR(50)
);
INSERT INTO doctor(doctor_id,doctor_name,duty-time,contact,addesss)
VALUES(1,'Dr.Roy','9am-6pm',019234455,'Dhaka'),
(2,'Dr.Islam','6pm-9am',01327456575,'Dhaka')

CREATE TABLE nurse(
nurse-id INT PRIMARY KEY AUTO_INCREMENT,
nurse_name VARCHAR(50),
doctor_id INT FOREIGN KEY(doctor_id)REFERRENCES doctor,
contact VARCHAR(20)
);
INSERT INTO nurse(nurse_id,nurse_name,doctor_id,contact)
VALUES(1,'Ms.Rahima',1,01318756576),
(2,'Ms.Marufa',2,01916547564),
(3,'Ms.Rina',1,0141475855),
(4,'Ms.Lota',2,019365454)

CREATE TABLE doctors_salary(
doctor-id INT PRIMARY KEY AUTO_INCREMENT,
working_hours VARCHAR(20),
salary VARCHAR(20),
date datetime
);
INSERT INTO doctors_salary(doctor_id,working_hours,salary,date)
VALUES(1,9hour,'60,000',2024-06-08 05:35:33),
(2,'9hours'.60,000',2024-06-08 05:35:50)

CREATE TABLE payment_of_child(
child_id INT FOREIGN KEY(child_id)REFERRENCES child,
parent_name VARCHAR(50),
payment-method VARCHAR(50),
date date
);
INSERT INTO payment_of_child(child_id,parent_name,payment-method,date)
VALUES(1,'Md.Hasan','bank',2024-06-06),
(2,'Mrs.Mariyam','rocket',2024-06-04),
(3,'Md.Rony','bank',2024-06-04),
(4,'Md.Hasan','Bkash',2024-06-04)

CREATE TABLE nurse_salary(
nurse_id INT FOREIGN KEY(nurse_id)REFERRENCES nurse,
working_hours VARCHAR(20),
salary VARCHAR(20)
);
INSERT INTO nurse_salary(nurse_id,working_hours,salary)
VALUES(1,'9hours','20,000')
(2,'9hours','20,000'),
(3,'9hours','20,000'),
(4,'9hours','20,000')
