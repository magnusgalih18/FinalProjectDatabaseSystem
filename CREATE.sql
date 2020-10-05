CREATE TABLE Staff(
	StaffId CHAR(5) PRIMARY KEY NOT NULL CHECK(StaffId LIKE 'ST[0-9][0-9][0-9]'),
	StaffName VARCHAR(50) NOT NULL,
	StaffSalary INTEGER NOT NULL,
	StaffEmail VARCHAR(50) NOT NULL CHECK(StaffEmail LIKE '%@%'),
	StaffPhoneNumber VARCHAR(50) NOT NULL CHECK(LEFT(StaffPhoneNumber, 3) = '+62'),
	StaffAddress VARCHAR(100) NOT NULL
	)

CREATE TABLE Transaction(
	TransactionId CHAR(5) PRIMARY KEY NOT NULL CHECK(TransactionId LIKE 'PD[0-9][0-9][0-9]'),
	StaffId CHAR(5) NOT NULL CHECK(StaffId LIKE 'ST[0-9][0-9][0-9]'),
	SupplierId CHAR(5) NOT NULL CHECK(SupplierId LIKE 'VD[0-9][0-9][0-9]'),
	PaymentId CHAR(5) NOT NULL CHECK(PaymentId LIKE 'PY[0-9][0-9][0-9]'),
	GownId CHAR(5) NOT NULL CHECK(GownId LIKE 'GW[0-9][0-9][0-9]'),
	TransactionDate DATE NOT NULL,
	GownQuantity INTEGER NOT NULL
	)

CREATE TABLE Payment(
	PaymentId CHAR(5) PRIMARY KEY NOT NULL CHECK(PaymentId LIKE 'PY[0-9][0-9][0-9]'),
	PaymentType VARCHAR(10) NOT NULL CHECK(PaymentType LIKE 'OVO' OR 'BCA' OR 'CASH'),
	PaymentAmount INTEGER NOT NULL
	)

CREATE TABLE GownType(
	GownTypeId CHAR(5) PRIMARY KEY NOT NULL CHECK(GownTypeId LIKE 'GT[0-9][0-9][0-9]'),
	GownTypeName VARCHAR(50) NOT NULL,
	GownTypeDescription VARCHAR(50) NOT NULL
	)

CREATE TABLE Rent(
	RentId CHAR(5) PRIMARY KEY NOT NULL CHECK(RentId LIKE 'RE[0-9][0-9][0-9]'),
	StaffId CHAR(5) NOT NULL CHECK(StaffId LIKE 'ST[0-9][0-9][0-9]'),
	MemberId CHAR(5) NOT NULL CHECK(MemberId LIKE 'MM[0-9][0-9][0-9]'),
	GownId CHAR(5) NOT NULL CHECK(GownId LIKE 'GW[0-9][0-9][0-9]'),
	RentStartDate DATE NOT NULL,
	RentEndDate DATE NOT NULL,
	GownQuantity INTEGER NOT NULL
	)

CREATE TABLE Gown(
	GownId CHAR(5) PRIMARY KEY NOT NULL CHECK(GownId LIKE 'GW[0-9][0-9][0-9]'),
	GownTypeId CHAR(5) NOT NULL CHECK(GownTypeId LIKE 'GT[0-9][0-9][0-9]'),
	GownColor VARCHAR(25) NOT NULL,
	GownRentPrice INTEGER NOT NULL,
	GownQuantity INTEGER NOT NULL
)

CREATE TABLE Member(
	MemberId CHAR(5) PRIMARY KEY NOT NULL CHECK(MemberId LIKE 'MM[0-9][0-9][0-9]'),
	MemberName VARCHAR(50) NOT NULL,
	MemberPhoneNumber VARCHAR(15) NOT NULL CHECK(LEFT(MemberPhoneNumber, 3) = '+62'),
	MemberGender VARCHAR(15) NOT NULL CHECK(MemberGender LIKE 'Male' OR 'Female'),
	MemberEmail VARCHAR(50) NOT NULL CHECK(MemberEmail LIKE '%@%')
	)

CREATE TABLE Supplier(
	SupplierId CHAR(5) PRIMARY KEY NOT NULL CHECK(SupplierId LIKE 'VD[0-9][0-9][0-9]'),
	SupplierName VARCHAR(50) NOT NULL,
	SupplierPhoneNumber VARCHAR(15) NOT NULL CHECK(LEFT(SupplierPhoneNumber, 3) = '+62'),
	SupplierEmail VARCHAR(50) NOT NULL CHECK(SupplierEmail LIKE '%@%'),
	SupplierAddress VARCHAR(100) NOT NULL
	)
