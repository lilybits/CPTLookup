
USE CPTLookup;
GO

-- categories
CREATE TABLE CPTCategory 
(CategoryID INT IDENTITY(1,1) PRIMARY KEY, Name VARCHAR(100) NOT NULL UNIQUE);
GO

-- codes
CREATE TABLE CPTCode 
(CPTCodeID INT IDENTITY(1,1) PRIMARY KEY, Code VARCHAR(10) NOT NULL UNIQUE,
Description VARCHAR(255) NOT NULL, CategoryID INT NOT NULL,

CONSTRAINT FK_CPTCode_CPTCategory
FOREIGN KEY (CategoryID)
REFERENCES CPTCategory(CategoryID)
);
GO

-- ins plans
CREATE TABLE Insurance 
(InsuranceID INT IDENTITY(1,1) PRIMARY KEY, Name VARCHAR(100) NOT NULL UNIQUE);
GO


-- prices for each ins
CREATE TABLE CPTPrice 
(CPTPriceID INT IDENTITY(1,1) PRIMARY KEY,
CPTCodeID INT NOT NULL, InsuranceID INT NOT NULL,
AllowedAmount DECIMAL(10,2) NULL, CoverageStatus VARCHAR(20) NOT NULL,

CONSTRAINT FK_CPTPrice_CPTCode
FOREIGN KEY (CPTCodeID)
REFERENCES CPTCode(CPTCodeID),

CONSTRAINT FK_CPTPrice_Insurance
FOREIGN KEY (InsuranceID)
REFERENCES Insurance(InsuranceID),

CONSTRAINT UQ_CPTPrice_CodeInsurance
UNIQUE (CPTCodeID, InsuranceID),

CONSTRAINT CK_CPTPrice_CoverageStatus
CHECK (CoverageStatus IN ('Covered', 'NotCovered', 'Unknown')),

CONSTRAINT CK_CPTPrice_AllowedAmount
CHECK (AllowedAmount >= 0)
);
GO

-- special pricing rules
CREATE TABLE PricingRule 
(PricingRuleID INT IDENTITY(1,1) PRIMARY KEY, CPTPriceID INT NOT NULL UNIQUE,
PricingType VARCHAR(20) NOT NULL, FirstUnitAmount DECIMAL(10,2) NULL,
AdditionalUnitAmount DECIMAL(10,2) NULL, FlatAmount DECIMAL(10,2) NULL,

CONSTRAINT FK_PricingRule_CPTPrice
FOREIGN KEY (CPTPriceID)
REFERENCES CPTPrice(CPTPriceID),

CONSTRAINT CK_PricingRule_PricingType
CHECK (PricingType IN ('FirstAdditional', 'Flat')),

CONSTRAINT CK_PricingRule_Amounts
CHECK 
((PricingType = 'FirstAdditional'
AND FirstUnitAmount IS NOT NULL
AND AdditionalUnitAmount IS NOT NULL
AND FlatAmount IS NULL)
OR
(PricingType = 'Flat'
AND FlatAmount IS NOT NULL
AND FirstUnitAmount IS NULL
AND AdditionalUnitAmount IS NULL)),

CONSTRAINT CK_PricingRule_NonNegative
CHECK 
((FirstUnitAmount IS NULL OR FirstUnitAmount >= 0)
AND (AdditionalUnitAmount IS NULL OR AdditionalUnitAmount >= 0)
AND (FlatAmount IS NULL OR FlatAmount >= 0))
);
GO
