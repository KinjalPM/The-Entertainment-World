create database mb;
use mb;

CREATE TABLE `Person` (
  `PersonID` INT NOT NULL,
  `Suffix` VARCHAR(45) NULL,
  `First_Name` VARCHAR(45) NOT NULL,
  `Middle_Name` VARCHAR(45) NULL,
  `Last_Name` VARCHAR(45) NOT NULL,
  `EmailAddress` VARCHAR(50) NULL,
  `PhoneNo` VARCHAR(45) NOT NULL,
  `Gender` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`PersonID`));
  
  
INSERT INTO `mb`.`Person` (`PersonID`, `Suffix`, `First_Name`, `Middle_Name`, `Last_Name`, `EmailAddress`, `PhoneNo`, `Gender`) VALUES ('1', 'Mr', 'Arham', 'Paras', 'Mehta', 'arhammehta11@gmail.com', '8008346789', 'Male');
INSERT INTO `mb`.`Person` (`PersonID`, `Suffix`, `First_Name`, `Middle_Name`, `Last_Name`, `PhoneNo`, `Gender`) VALUES ('2', 'Miss', 'Vanita', 'Paras', 'Mehta', '9930057992', 'Female');
INSERT INTO `mb`.`Person` (`PersonID`, `First_Name`, `Middle_Name`, `Last_Name`, `EmailAddress`, `PhoneNo`, `Gender`) VALUES ('3', 'Shruti', 'Vipul', 'Thakkar', 'shrutithakkar@gmail.com', '8974882345', 'female');
INSERT INTO `mb`.`Person` (`PersonID`, `Suffix`, `First_Name`, `Middle_Name`, `Last_Name`, `EmailAddress`, `PhoneNo`, `Gender`) VALUES ('6', 'Mr', 'John', 'Bob', 'Andy', 'andyj@gmail.com', '8794562167', 'Male');
INSERT INTO `mb`.`Person` (`PersonID`, `Suffix`, `First_Name`, `Middle_Name`, `Last_Name`, `EmailAddress`, `PhoneNo`, `Gender`) VALUES ('7', 'Mr', 'Daniel', '', 'Cersey', 'creseyda@gmail.com', '8765432983', 'Male');
INSERT INTO `mb`.`Person` (`PersonID`, `Suffix`, `First_Name`, `Last_Name`, `EmailAddress`, `PhoneNo`, `Gender`) VALUES ('8', 'Miss', 'Shreya', 'Mishra', 'shreyadmishra@gmail.com', '8438009654', 'Female');
INSERT INTO `mb`.`Person` (`PersonID`, `Suffix`, `First_Name`, `Last_Name`, `EmailAddress`, `PhoneNo`, `Gender`) VALUES ('9', 'Miss', 'Rishikha', 'Sharma', 'rishikha123@gmail.com', '9872199236', 'Female');
INSERT INTO `mb`.`Person` (`PersonID`, `Suffix`, `First_Name`, `Last_Name`, `EmailAddress`, `PhoneNo`, `Gender`) VALUES ('10', 'Miss', 'Charmy ', 'Desai', 'desaich@gmail.com', '8769034562', 'Female');
INSERT INTO `mb`.`Person` (`PersonID`, `Suffix`, `First_Name`, `Last_Name`, `EmailAddress`, `PhoneNo`, `Gender`) VALUES ('11', 'Miss', 'Ami', 'Gandhi', 'gandhiami@gmail.com', '1342872792', 'Female');
INSERT INTO `mb`.`Person` (`PersonID`, `Suffix`, `First_Name`, `Last_Name`, `EmailAddress`, `PhoneNo`, `Gender`) VALUES ('12', 'Miss', 'Kirti', 'Sukhla', 'shuklaki@gmail.com', '9263829212', 'Female');
INSERT INTO `mb`.`Person` (`PersonID`, `Suffix`, `First_Name`, `Last_Name`, `EmailAddress`, `PhoneNo`, `Gender`) VALUES ('13', 'Mr', 'Prem', 'Thapar', 'premth@gmail.com', '7893489291', 'Male');
INSERT INTO `mb`.`Person` (`PersonID`, `Suffix`, `First_Name`, `Last_Name`, `EmailAddress`, `PhoneNo`, `Gender`) VALUES ('14', 'Miss', 'Shubhangi', 'Juneja', 'junejashu@gmail.com', '9865246311', 'Female');
INSERT INTO `mb`.`Person` (`PersonID`, `Suffix`, `First_Name`, `Last_Name`, `EmailAddress`, `PhoneNo`, `Gender`) VALUES ('15', 'Miss', 'Prachi', 'Nagwekar', 'prachinag@gmail.com', '7890218456', 'Female');
INSERT INTO `mb`.`Person` (`PersonID`, `Suffix`, `First_Name`, `Last_Name`, `EmailAddress`, `PhoneNo`, `Gender`) VALUES ('16', 'Miss', 'Vanita', 'Patil', 'vantiapatil@gmail.com', '8882492134', 'Female');
INSERT INTO `mb`.`Person` (`PersonID`, `Suffix`, `First_Name`, `Last_Name`, `EmailAddress`, `PhoneNo`, `Gender`) VALUES ('17', 'Mr', 'Saurav', 'Makwana', 'sauravmak@gmail.com', '7886555332', 'Male');
INSERT INTO `mb`.`Person` (`PersonID`, `Suffix`, `First_Name`, `Last_Name`, `EmailAddress`, `PhoneNo`, `Gender`) VALUES ('18', 'Mr', 'Manan', 'Doshi', 'manandoshi@gmail.com', '9888232333', 'Male');
INSERT INTO `mb`.`Person` (`PersonID`, `Suffix`, `First_Name`, `Last_Name`, `EmailAddress`, `PhoneNo`, `Gender`) VALUES ('19', 'Mr', 'Kushal', 'Shah', 'kushalshah@gmail.com', '8777632456', 'Male');
INSERT INTO `mb`.`Person` (`PersonID`, `Suffix`, `First_Name`, `Last_Name`, `EmailAddress`, `PhoneNo`, `Gender`) VALUES ('20', 'Mr', 'Bhargav', 'Patil', 'bhargavpatil@gmail.com', '9876666621', 'Male');
INSERT INTO `mb`.`Person` (`PersonID`, `Suffix`, `First_Name`, `Last_Name`, `EmailAddress`, `PhoneNo`, `Gender`) VALUES ('21', 'Miss', 'Manali', 'Sawant', 'manalisaw@gmail.com', '8877766689', 'Female');
INSERT INTO `mb`.`Person` (`PersonID`, `Suffix`, `First_Name`, `Middle_Name`, `Last_Name`, `EmailAddress`, `PhoneNo`, `Gender`) VALUES ('22', 'Ms', 'Mamta', 'Rohit', 'Jain', 'mamtajain545@gmail.com', '9820928020', 'Female');
INSERT INTO `mb`.`Person` (`PersonID`, `Suffix`, `First_Name`, `Last_Name`, `EmailAddress`, `PhoneNo`, `Gender`) VALUES ('23', 'Ms', 'Pratibha', 'Bohara', 'pratibhabohara345@gmail.com', '9769695057', 'Female');
INSERT INTO `mb`.`Person` (`PersonID`, `Suffix`, `First_Name`, `Last_Name`, `EmailAddress`, `PhoneNo`, `Gender`) VALUES ('24', 'Ms', 'Seema', 'Jain', 'jainasemma222@gmail.com', '9987976733', 'Female');
INSERT INTO `mb`.`Person` (`PersonID`, `Suffix`, `First_Name`, `Last_Name`, `EmailAddress`, `PhoneNo`, `Gender`) VALUES ('25', 'Ms', 'Urjha', 'Jain', 'jainurjha234@gmail.com', '9997865422', 'Female');
INSERT INTO `mb`.`Person` (`PersonID`, `Suffix`, `First_Name`, `Last_Name`, `EmailAddress`, `PhoneNo`, `Gender`) VALUES ('26', 'Mr', 'Karthik', 'Bohara', 'karthikbohara1123@gmail.com', '8879654321', 'Male');
INSERT INTO `mb`.`Person` (`PersonID`, `Suffix`, `First_Name`, `Last_Name`, `EmailAddress`, `PhoneNo`, `Gender`) VALUES ('27', 'Mr', 'Salman', 'Khan', 'khansalman23@gmail.com', '98776873513', 'Male');
INSERT INTO `mb`.`Person` (`PersonID`, `Suffix`, `First_Name`, `Last_Name`, `EmailAddress`, `PhoneNo`, `Gender`) VALUES ('28', 'Mr', 'Jyan', 'Jain', 'jainjyan89@gmail.com', '98766586312', 'Male');

Select * from person
Order by Personid;