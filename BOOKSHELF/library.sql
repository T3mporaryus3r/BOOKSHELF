-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2024 at 07:00 PM
-- Server version: 5.6.26
-- PHP Version: 5.5.28
SET
  SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

SET
  time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
  
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
  
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
  
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: library
--
-- --------------------------------------------------------
--
-- Table structure for table admin
--
CREATE TABLE IF NOT EXISTS admin (
  id int(11) NOT NULL,
  FullName varchar(100) DEFAULT NULL,
  AdminEmail varchar(120) DEFAULT NULL,
  UserName varchar(100) NOT NULL,
  Password varchar(100) NOT NULL,
  updationDate timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = latin1;

-- --------------------------------------------------------
--
INSERT INTO admin (id, FullName, AdminEmail, UserName, Password, updationDate) VALUES (11,'bhanubastola', 'bhanubastola77@gmail.com', 'admin', MD5('admin'), '');

--
-- Table structure for table tblauthors
--
CREATE TABLE IF NOT EXISTS tblauthors (
  id int(11) NOT NULL,
  AuthorName varchar(159) DEFAULT NULL,
  creationDate timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  UpdationDate timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE = InnoDB AUTO_INCREMENT = 10 DEFAULT CHARSET = latin1;

-- --------------------------------------------------------
--
-- Table structure for table tblbooks
--
CREATE TABLE IF NOT EXISTS tblbooks (
  id int(11) NOT NULL,
  BookName varchar(255) DEFAULT NULL,
  CatId int(11) DEFAULT NULL,
  AuthorId int(11) DEFAULT NULL,
  ISBNNumber bigint(20) DEFAULT NULL,
  BookPrice int(11) DEFAULT NULL,
  RegDate timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  UpdationDate timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = latin1;

-- --------------------------------------------------------
--
-- Table structure for table tblcategory
--
CREATE TABLE IF NOT EXISTS tblcategory (
  id int(11) NOT NULL,
  CategoryName varchar(150) DEFAULT NULL,
  Status int(1) DEFAULT NULL,
  CreationDate timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  UpdationDate timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE = InnoDB AUTO_INCREMENT = 8 DEFAULT CHARSET = latin1;

-- --------------------------------------------------------
--
-- Table structure for table tblissuedbookdetails
--
CREATE TABLE IF NOT EXISTS tblissuedbookdetails (
  id int(11) NOT NULL,
  BookId int(11) DEFAULT NULL,
  StudentID varchar(150) DEFAULT NULL,
  IssuesDate timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  ReturnDate timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  RetrunStatus int(1) NOT NULL,
  fine int(11) DEFAULT NULL
) ENGINE = InnoDB AUTO_INCREMENT = 7 DEFAULT CHARSET = latin1;

-- --------------------------------------------------------
--
-- Table structure for table tblstudents
--
CREATE TABLE IF NOT EXISTS tblstudents (
  id int(11) NOT NULL,
  StudentId varchar(100) DEFAULT NULL,
  FullName varchar(120) DEFAULT NULL,
  EmailId varchar(120) DEFAULT NULL,
  MobileNumber char(11) DEFAULT NULL,
  Password varchar(120) DEFAULT NULL,
  Status int(1) DEFAULT NULL,
  RegDate timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  UpdationDate timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE = InnoDB AUTO_INCREMENT = 11 DEFAULT CHARSET = latin1;

--
-- Indexes for dumped tables
--
--
-- Indexes for table admin
--
ALTER TABLE admin
ADD PRIMARY KEY (id);

--
-- Indexes for table tblauthors
--
ALTER TABLE tblauthors
ADD PRIMARY KEY (id);

--
-- Indexes for table tblbooks
--
ALTER TABLE tblbooks
ADD PRIMARY KEY (id);

--
-- Indexes for table tblcategory
--
ALTER TABLE tblcategory
ADD PRIMARY KEY (id);

--
-- Indexes for table tblissuedbookdetails
--
ALTER TABLE tblissuedbookdetails
ADD PRIMARY KEY (id);

--
-- Indexes for table tblstudents
--
ALTER TABLE tblstudents
ADD PRIMARY KEY (id),
ADD UNIQUE KEY StudentId (StudentId);

--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table admin
--
ALTER TABLE admin
MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;

--
-- AUTO_INCREMENT for table tblauthors
--
ALTER TABLE tblauthors
MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 10;

--
-- AUTO_INCREMENT for table tblbooks
--
ALTER TABLE tblbooks
MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 4;

--
-- AUTO_INCREMENT for table tblcategory
--
ALTER TABLE tblcategory
MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 8;

--
-- AUTO_INCREMENT for table tblissuedbookdetails
--
ALTER TABLE tblissuedbookdetails
MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 7;

--
-- AUTO_INCREMENT for table tblstudents
--
ALTER TABLE tblstudents
MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 11;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
