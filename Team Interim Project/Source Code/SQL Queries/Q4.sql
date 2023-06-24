CREATE VIEW AverageSickLeaveHours_OLdata AS
SELECT TOP 67 JobTitle, AVG(SickLeaveHours) AS AverageSickLeave, OrganizationLevel
FROM HumanResources.Employee
GROUP BY OrganizationLevel, JobTitle
ORDER BY OrganizationLevel, AverageSickLeave DESC;