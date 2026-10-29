USE CPTLookup;
GO

-- categories
INSERT INTO CPTCategory (Name)
SELECT v.Name
FROM (VALUES ('Exam'), ('Adjustment'), ('Therapy'), ('Acupuncture'))
AS v(Name)
WHERE NOT EXISTS
(SELECT 1 FROM CPTCategory AS c WHERE c.Name = v.Name);
GO
