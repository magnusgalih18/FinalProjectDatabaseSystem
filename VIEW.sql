--1
SELECT MemberId, MemberName, [Total Rent Quantity] = SUM(GownQuantity)
FROM Rent R, Member M
WHERE R.MemberId = M.MemberId AND MONTH(RentStartDate) = 6 AND MemberId IS BETWEEN 1 AND 5

--2
SELECT StaffId, StaffName, [Total Purchase Transaction] = COUNT(SELECT )

--3
SELECT [Member Name] = 'Mrs. ' + MemberName, [Renting Cost] =

--4
SELECT StaffId, [First Name] = SUBSTRING(StaffName, 1, (CHARINDEX(' ', StaffName, 1)+1)-1 ), [Total Purchasing Amount] =
FROM Staff
WHERE StaffId = 'ST001' AND

--5
SELECT StaffId, StaffName, [Staff Gender] = SUBSTRING(StaffGender, 1), [Staff Salary] = 'Rp. ' + CAST(StaffSalary AS VARCHAR)
FROM Staff
WHERE StaffSalary > (SELECT AVG(StaffSalary) FROM Staff) AND LEFT(StaffName, 1) = 'A'
ORDER BY DESC

--6
SELECT GownId, [Rented Total Times] = COUNT(SELECT RentId FROM Rent WHERE GownId =) + ' time(s)', GownColor, GownTypeName, [Description Length] = LEN(GownTypeDescription)
FROM GownType GT, Gown G
WHERE GT.GownTypeId = G.GownTypeId AND MONTH(RentEndDate) = 6 AND GownTypeDescription < (SELECT AVG(LEN(GownTypeDescription)) FROM GownType)

--7
SELECT [Gown Number] = 'Gown ' + SUBSTRING(GownId, 4, 6), GownTypeName, GownRentPrice = 'Rp. ' + CAST(GownRentPrice AS VARCHAR), 

--8


--9


--10
