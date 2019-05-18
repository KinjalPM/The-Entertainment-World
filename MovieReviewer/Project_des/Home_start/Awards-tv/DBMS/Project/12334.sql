Create DATABASE HMDB;
USE HMDB ;

CREATE TABLE `HMDB`.`Person` (
  `PersonID` INT NOT NULL,
  `Suffix` VARCHAR(45) NULL,
  `First_Name` VARCHAR(45) NOT NULL,
  `Middle_Name` VARCHAR(45) NULL,
  `Last_Name` VARCHAR(45) NOT NULL,
  `EmailAddress` VARCHAR(50) NULL,
  `PhoneNo` VARCHAR(45) NOT NULL,
  `Gender` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`PersonID`));
  

  CREATE TABLE `HMDB`.`Address` (
  `AddressID` INT NOT NULL,
  `AddressLine1` VARCHAR(45) NOT NULL,
  `AddressLine2` VARCHAR(45) NULL,
  `City` VARCHAR(45) NOT NULL,
  `State` VARCHAR(45) NOT NULL,
  `Country` VARCHAR(45) NOT NULL,
  `PostalCode` VARCHAR(45) NOT NULL,
  `PersonID` INT NULL,
  PRIMARY KEY (`AddressID`),
  INDEX `PersonID_idx` (`PersonID` ASC) ,
  CONSTRAINT `Address_PersonID`
    FOREIGN KEY (`PersonID`)
    REFERENCES `HMDB`.`Person` (`PersonID`)
);

CREATE TABLE `HMDB`.`Department` (
  `DepartmentID` INT NOT NULL,
  `DepartmentName` VARCHAR(45) NOT NULL,
  `HodOfDepartment` VARCHAR(45) NULL,
  PRIMARY KEY (`DepartmentID`));
  
  CREATE TABLE `HMDB`.`Doctor` (
  `PersonId` INT NULL,
  `DepartmentId` INT NULL,
  `DoctorID` INT NOT NULL,
  `Qualification` VARCHAR(45) NOT NULL,
  `Salary` VARCHAR(45) NULL,
  `CabinNO` INT NOT NULL,
  `FloorNo` INT NULL,
  `VisitingTimimng` DATETIME NOT NULL,
  PRIMARY KEY (`DoctorID`),
  INDEX `PersonID_idx` (`PersonID` ASC) ,
  INDEX `DepartmentID_idx` (`DepartmentID` ASC) ,
  CONSTRAINT `Doctor_PersonID`
    FOREIGN KEY (`PersonID`)
    REFERENCES `HMDB`.`Person` (`PersonID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Doctor_DepartmentID`
    FOREIGN KEY (`DepartmentID`)
    REFERENCES `HMDB`.`Department` (`DepartmentID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
    );
    
INSERT INTO `HMDB`.`Doctor` (`PersonId`, `DepartmentId`, `DoctorID`, `Qualification`, `Salary`, `CabinNO`, `FloorNo`, `VisitingTimimng`) VALUES ('1', '101', '1', 'MD in cardiology', '200000', '11', '1', '10:00 am - 4:00 pm');
UPDATE `HMDB`.`Doctor` SET `VisitingTime` = '10:00 am - 4:00 pm' WHERE (`DoctorID` = '1');
INSERT INTO `HMDB`.`Doctor` (`PersonId`, `DepartmentId`, `DoctorID`, `Qualification`, `Salary`, `CabinNO`, `FloorNo`, `VisitingTimimng`) VALUES ('2', '101', '5', 'Master in cardology', '15000', '12', '1', '10:00 am - 4:00 pm');
INSERT INTO `HMDB`.`Doctor` (`PersonId`, `DepartmentId`, `DoctorID`, `Qualification`, `Salary`, `CabinNO`, `FloorNo`, `VisitingTimimng`)VALUES ('3', '102', '8', 'Bachelor in  Gynaelcology', '10000', '31', '2', '1:00 pm - 5:00pm');
INSERT INTO `HMDB`.`Doctor` (`PersonId`, `DepartmentId`, `DoctorID`, `Qualification`, `Salary`, `CabinNO`, `FloorNo`, `VisitingTimimng`)VALUES ('4', '102', '3', 'MD in Gynaelcology', '51000', '32', '2', '12:00 pm - 6:00pm');
INSERT INTO `HMDB`.`Doctor` (`PersonId`, `DepartmentId`, `DoctorID`, `Qualification`, `Salary`, `CabinNO`, `FloorNo`, `VisitingTimimng`) VALUES ('5', '103', '2', 'MD in Matrnity', '60000', '33', '3', '1:00 pm - 3:00 pm');
INSERT INTO `HMDB`.`Doctor` (`DoctorID`, `DepartmentID`, `PersonID`, `Qualification`, `Salary`, `CabinNo`, `FloorNo`, `VisitingTime`) VALUES ('6', '103', '23', 'Master in Matrnity', '25000', '34', '3', '1:00pm - 3:00 pm');
INSERT INTO `HMDB`.`Doctor` (`PersonId`, `DepartmentId`, `DoctorID`, `Qualification`, `Salary`, `CabinNO`, `FloorNo`, `VisitingTimimng`) VALUES ('7', '104', '6', 'MD in A&E', '60000', '21', '2', '9:00 am - 12:00 pm');
INSERT INTO `HMDB`.`Doctor` (`PersonId`, `DepartmentId`, `DoctorID`, `Qualification`, `Salary`, `CabinNO`, `FloorNo`, `VisitingTimimng`) VALUES ('8', '104', '10', 'Bachelor in A&E', '45000', '22', '2', '12:00 pm - 12:00 am');
INSERT INTO `HMDB`.`Doctor` (`PersonId`, `DepartmentId`, `DoctorID`, `Qualification`, `Salary`, `CabinNO`, `FloorNo`, `VisitingTimimng`) VALUES ('9', '105', '4', 'Neurology', '40000', '44', '4', '10:00am-1:00pm');
INSERT INTO `HMDB`.`Doctor` (`PersonId`, `DepartmentId`, `DoctorID`, `Qualification`, `Salary`, `CabinNO`, `FloorNo`, `VisitingTimimng`) VALUES ('10', '105', '11', 'Neurology', '30000', '45', '4', '9:00 am - 1:00 pm');
INSERT INTO `HMDB`.`Doctor` (`PersonId`, `DepartmentId`, `DoctorID`, `Qualification`, `Salary`, `CabinNO`, `FloorNo`, `VisitingTimimng`) VALUES ('11', '106', '9', 'Nurtitional and Diettics', '20000', '11', '1', '9:00 am - 12:00 pm');
INSERT INTO `HMDB`.`Doctor` (`PersonId`, `DepartmentId`, `DoctorID`, `Qualification`, `Salary`, `CabinNO`, `FloorNo`, `VisitingTimimng`) VALUES ('12', '106', '12', 'Nutritional and Diettics', '23000', '10', '1', '9:00 am - 12:00 pm');



CREATE TABLE `HMDB`.`Patient` (
  `Personid` INT NULL,
  `PatienceID` INT NOT NULL,
  PRIMARY KEY (`PatienceID`),
  INDEX `PersonID_idx` (`Personid` ASC) VISIBLE,
  UNIQUE INDEX `Personid_UNIQUE` (`Personid` ASC) ,
  CONSTRAINT `Patience_PersonID`
    FOREIGN KEY (`Personid`)
    REFERENCES `HMDB`.`Person` (`PersonID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `HMDB`.`LabStaff` (
  `LabStaffID` INT NOT NULL,
  `PersonID` INT NULL,
  `Qualification` VARCHAR(45) NULL,
  `Salary` VARCHAR(45) NULL,
  `TestTimming` DATETIME NULL,
  PRIMARY KEY (`LabStaffID`),
  INDEX `LabStaff_idx` (`PersonID` ASC) ,
  CONSTRAINT `LabStaff`
    FOREIGN KEY (`PersonID`)
    REFERENCES `HMDB`.`Person` (`PersonID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
CREATE TABLE `HMDB`.`Appointement` (
  `AppointementID` INT NOT NULL,
  `AppointementDate` DATE NOT NULL,
  `InTime` DATETIME NOT NULL,
  `OutTime` DATETIME NOT NULL,
  `DoctorID` INT NULL,
  `PersonID` INT NULL,
  PRIMARY KEY (`AppointementID`),
  INDEX `Appointment_PersonID_idx` (`PersonID` ASC) ,
  INDEX `AppointmentDoctor_idx` (`DoctorID` ASC) ,
  CONSTRAINT `Appointment_PersonID`
    FOREIGN KEY (`PersonID`)
    REFERENCES `HMDB`.`Person` (`PersonID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `AppointmentDoctor`
    FOREIGN KEY (`DoctorID`)
    REFERENCES `HMDB`.`Doctor` (`DoctorID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    CREATE TABLE `HMDB`.`Prescription` (
  `PrescriptionID` INT NOT NULL,
  `DoctorID` INT NULL,
  `PaitenceID` INT NULL,
  `Date` DATE NOT NULL,
  `Prescription` VARCHAR(45) NULL,
  `TestToPerform` VARCHAR(45) NULL,
  PRIMARY KEY (`PrescriptionID`),
  INDEX `Prescription_DoctorID_idx` (`DoctorID` ASC) ,
  INDEX `Prescription_Patient_idx` (`PaitenceID` ASC) ,
  CONSTRAINT `Prescription_DoctorID`
    FOREIGN KEY (`DoctorID`)
    REFERENCES `HMDB`.`Doctor` (`DoctorID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Prescription_PatientID`
    FOREIGN KEY (`PaitenceID`)
    REFERENCES `HMDB`.`Patience` (`PatienceID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

    CREATE TABLE `HMDB`.`TestReport` (
  `TestReportID` INT NOT NULL,
  `Hospital Name` VARCHAR(45) NOT NULL,
  `Date` DATE NOT NULL,
  `Name of Test` VARCHAR(45) NOT NULL,
  `Test Description` VARCHAR(45) NULL,
  `Result` VARCHAR(45) NOT NULL,
  `Comments` VARCHAR(45) NOT NULL,
  `LabStaffID` INT NULL,
  `PrescriptionID` INT NULL,
  PRIMARY KEY (`TestReportID`),
  INDEX `TestReport_Prescription_idx` (`PrescriptionID` ASC) ,
  INDEX `TestReport_LabStaffId_idx` (`LabStaffID` ASC) ,
  CONSTRAINT `TestReport_Prescription`
    FOREIGN KEY (`PrescriptionID`)
    REFERENCES `HMDB`.`Prescription` (`PrescriptionID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `TestReport_LabStaffId`
    FOREIGN KEY (`LabStaffID`)
    REFERENCES `HMDB`.`LabStaff` (`LabStaffID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    CREATE TABLE `HMDB`.`Medicine` (
  `MedicineID` INT NOT NULL,
  `MedicineName` VARCHAR(45) NOT NULL,
  `Medicine Dose` VARCHAR(45) NULL,
  `Quantity` VARCHAR(45) NULL,
  `PatientID` INT NULL,
  PRIMARY KEY (`MedicineID`),
  INDEX `Medicience_PatientID_idx` (`PatientID` ASC) ,
  CONSTRAINT `Medicince_PatientID`
    FOREIGN KEY (`PatientID`)
    REFERENCES `HMDB`.`Patient` (`PatientID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
CREATE TABLE `HMDB`.`Bill` (
  `BillID` INT NOT NULL,
  `Date` DATETIME NULL,
  `ItemName` VARCHAR(45) NULL,
  `Cost` VARCHAR(45) NULL,
  `Quantity` VARCHAR(45) NULL,
  `TestID` INT NULL,
  `PrescriptionID` INT NULL,
  PRIMARY KEY (`BillID`),
  INDEX `Bill_PrescriptionID_idx` (`PrescriptionID` ASC) ,
  CONSTRAINT `Bill_PrescriptionID`
    FOREIGN KEY (`PrescriptionID`)
    REFERENCES `HMDB`.`Prescription` (`PrescriptionID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `HMDB`.`Person` (`PersonID`, `Suffix`, `First_Name`, `Middle_Name`, `Last_Name`, `EmailAddress`, `PhoneNo`, `Gender`) VALUES ('1', 'Mr', 'Arham', 'Paras', 'Mehta', 'arhammehta11@gmail.com', '8008346789', 'Male');
INSERT INTO `HMDB`.`Person` (`PersonID`, `Suffix`, `First_Name`, `Middle_Name`, `Last_Name`, `PhoneNo`, `Gender`) VALUES ('2', 'Miss', 'Vanita', 'Paras', 'Mehta', '9930057992', 'Female');
INSERT INTO `HMDB`.`Person` (`PersonID`, `First_Name`, `Middle_Name`, `Last_Name`, `EmailAddress`, `PhoneNo`, `Gender`) VALUES ('3', 'Shruti', 'Vipul', 'Thakkar', 'shrutithakkar@gmail.com', '8974882345', 'female');


  -- Person and Address Table are Joined
    Select * From Person;
    Select * From Person p
    INNER JOIN Address a
    ON p.personid = a.personid 
    ORDER BY GENDER;
    
    
-- Patient and Person table is joined
Select * from Patient ;
Select * From Patient pa
Inner Join Person p
On pa.PersonId =  p.PersonId;


-- Doctor and Person Table is Joined
SELECT * from Doctor ;
SELECT *  from ((Doctor
Inner Join Person
ON Doctor.PersonId = Person.PersonId )
Inner Join Department
ON Doctor.DepartmentID = Department.DepartmentID)
ORDER BY  DepartmentName  ;


-- Appointment , Doctor and Person Table 
Select * FROM Appointement ;
Select * FROM ((Appointement 
Inner Join Doctor
ON Appointement.DoctorID = Doctor.DoctorID)
Inner Join Patient
ON Appointement.PatientID = Patient.PatientID);
-- ORDER BY InTime ;


-- TEST REPORT WITH PRESCRIPTION 
Select * FROM TestReport;


-- Query to get Patient Prescription
Select p.First_Name, p.Last_Name, t.NameofTest, pre.Prescription FROM TestReport t, Prescription pre, Patient pa,Person p
where t.PrescriptionID = pre.PrescriptionID AND
pre.PaitenceID = pa.PatientID and pa.Personid= p.PersonID
ORDER BY pre.Date ASC;

-- Trigger
CREATE TABLE `HMDB`.`Person_log` (
  `Person_logid` INT NOT NULL,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `gender` VARCHAR(45) NULL,
  `EmailId` VARCHAR(45) NULL,
  `Phone` VARCHAR(45) NULL,
  `Date` TIMESTAMP(6) NULL
  );


DELIMITER $$
CREATE TRIGGER DeleteRecords
Before DELETE ON Person
FOR EACH ROW 
BEGIN
INSERT INTO person_log(Person_logid ,first_name,last_name , gender , EmailId , Phone ,Date )
Values(old.personid, old.first_name, old.last_name, old.gender,old.emailaddress,old.phoneno, Now());
END;
$$

 DELETE FROM Person 
 where personid =  31;
 
Select * from hmdb.Person_log;

 Person_log
 
 -- Views on bill 
 
 CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `PatientBill` AS
    SELECT 
        `bill`.`BillID` AS `billid`,
        `bill`.`Date` AS `date`,
         `testreport`.`HospitalName` AS `HOSPITALNAME`,
        `testreport`.`NameofTest` AS `NAMEOFREPORT`,
        `testreport`.`Result` AS `result`,
        `bill`.`ItemName` AS `itemname`,  
        `bill`.`Cost` AS `cost`,
        `bill`.`Quantity` AS `quantity`
       
    FROM
        (`bill`
        JOIN `testreport` ON ((`bill`.`TestID` = `testreport`.`TestReportID`)));
        
-- SELECT * FROM HMDB.patientbill;
Select BillID, Date,Hospitalname, nameofreport, result, ItemName,  Cost*Quantity AS TOTALPRICE from HMDB.patientbill;

-- Analytics
select SUM(Cost*Quantity) AS Revenue from HMDB.patientbill;

select * from hmdb.doctor  
where salary >10000
Order By DepartmentId;



-- connection
DELIMITER //
CREATE PROCEDURE create_user
(IN user_nm CHAR(20), IN user_ps CHAR(20))
BEGIN
  SET @host_name := 'admin';
  SET @user_name := user_nm;
  SET @pass := user_ps;
  
  SET @db_nm:='Hospital Managements';
  
SET @sql := CONCAT("CREATE USER ", QUOTE(@user_name), "@", QUOTE(@host_name), " IDENTIFIED BY ", QUOTE(@pass));
PREPARE stmt FROM @sql;
EXECUTE stmt;
SET @GRANT_PERMISSIONS = CONCAT("GRANT ALL  ON ", @db_nm, ".* TO ", QUOTE(@user_name), "@",QUOTE(@host_name));
PREPARE statement FROM @GRANT_PERMISSIONS;
EXECUTE statement;
  
END //
DELIMITER ;

call HMDB.create_user('admin', 'admin@123');

-- store procedure being used for login for users like doctors
select * from login11;
CREATE TABLE IF NOT EXISTS `HMDB`.`Login` (
  `LoginID` INT(11) NOT NULL,
  `Username` VARCHAR(45) NULL DEFAULT NULL,
  `Password` VARCHAR(45) NULL DEFAULT NULL,
  `Person_PersonID` INT(11) NOT NULL,
  PRIMARY KEY (`LoginID`),
  INDEX `fk_Login_Person1_idx` (`Person_PersonID` ASC) VISIBLE,
  CONSTRAINT `fk_Login_Person1`
    FOREIGN KEY (`Person_PersonID`)
    REFERENCES `HMDB`.`person` (`personid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO `HMDB`.`Login11` (`LoginID`, `Username`, `Password`,`Person_PersonID`) VALUES ('1', 'admin','admin@123', '1' );


select * from login11;


-- stored procedure being used
DELIMITER $$
USE `HMDB`$$
CREATE PROCEDURE `authentication` (in uname varchar(10), in  pass varchar(10) , out status int )
BEGIN

set @status = (select count(loginId) from login
where login.username = uname and login.password = pass);
END ;$$

DELIMITER ;

Select User from mysql.user;





