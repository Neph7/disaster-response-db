-- Create the database 
CREATE DATABASE "DisasterResponseDB";

--Creating Tables

-- Location table
CREATE TABLE "Location" (
    "LocationID" SERIAL PRIMARY KEY,
    "County" VARCHAR(100),
    "SubCounty" VARCHAR(100),
    "Ward" VARCHAR(100),
    "GPSCoordinates" VARCHAR(255)
);

-- Organization table
CREATE TABLE "Organization" (
    "OrganizationID" SERIAL PRIMARY KEY,
    "OrgName" VARCHAR(100) NOT NULL,
    "OrgType" VARCHAR(50),
    "ContactInfo" VARCHAR(255),
    "RegistrationNo" VARCHAR(50) UNIQUE
);

-- ResponseTeam table
CREATE TABLE "ResponseTeam" (
    "TeamID" SERIAL PRIMARY KEY,
    "Name" VARCHAR(100),
    "OrganizationID" INT,
    "ContactInfo" VARCHAR(255),
    "Specialization" VARCHAR(100),
    FOREIGN KEY ("OrganizationID") REFERENCES "Organization" ("OrganizationID")
);

-- DisasterEvent table
CREATE TABLE "DisasterEvent" (
    "EventID" SERIAL PRIMARY KEY,
    "Type" VARCHAR(100),
    "LocationID" INT,
    "SeverityLevel" VARCHAR(50),
    "StartDate" DATE,
    "EndDate" DATE,
    "Description" TEXT,
    FOREIGN KEY ("LocationID") REFERENCES "Location" ("LocationID")
);

-- ImpactReport table
CREATE TABLE "ImpactReport" (
    "ReportID" SERIAL PRIMARY KEY,
    "EventID" INT,
    "ReportDate" DATE,
    "Casualties" INT,
    "Injuries" INT,
    "PropertyDamage" TEXT,
    "Remarks" TEXT,
    FOREIGN KEY ("EventID") REFERENCES "DisasterEvent" ("EventID")
);

-- Deployment table
CREATE TABLE "Deployment" (
    "DeploymentID" SERIAL PRIMARY KEY,
    "TeamID" INT,
    "EventID" INT,
    "DeploymentDate" DATE,
    "Status" VARCHAR(50),
    FOREIGN KEY ("TeamID") REFERENCES "ResponseTeam" ("TeamID"),
    FOREIGN KEY ("EventID") REFERENCES "DisasterEvent" ("EventID")
);

-- AffectedPerson table
CREATE TABLE "AffectedPerson" (
    "PersonID" SERIAL PRIMARY KEY,
    "FullName" VARCHAR(100),
    "Age" INT,
    "Gender" VARCHAR(10),
    "LocationID" INT,
    "Needs" TEXT,
    "Status" VARCHAR(50),
    FOREIGN KEY ("LocationID") REFERENCES "Location" ("LocationID")
);

-- AidResource table
CREATE TABLE "AidResource" (
    "ResourceID" SERIAL PRIMARY KEY,
    "ResourceType" VARCHAR(100),
    "Description" TEXT,
    "QuantityAvailable" INT
);

-- ResourceDistribution table
CREATE TABLE "ResourceDistribution" (
    "DistributionID" SERIAL PRIMARY KEY,
    "ResourceID" INT,
    "PersonID" INT,
    "EventID" INT,
    "Quantity" INT,
    "DistributionDate" DATE,
    FOREIGN KEY ("ResourceID") REFERENCES "AidResource" ("ResourceID"),
    FOREIGN KEY ("PersonID") REFERENCES "AffectedPerson" ("PersonID"),
    FOREIGN KEY ("EventID") REFERENCES "DisasterEvent" ("EventID")
);

--Data manipulation
--Insert
INSERT INTO "Location" ("LocationID", "County", "SubCounty", "Ward", "GPSCoordinates")
VALUES (1, 'Nairobi', 'Westlands', 'Kangemi', '1.2921°S, 36.8219°E');

INSERT INTO "Organization" ("OrganizationID", "OrgName", "OrgType", "ContactInfo", "RegistrationNo")
VALUES (1, 'Red Cross Kenya', 'NGO', 'contact@redcross.or.ke', 'REG12345');

INSERT INTO "ResponseTeam" ("TeamID", "Name", "OrganizationID", "ContactInfo", "Specialization")
VALUES (1, 'Alpha Team', 1, '0722123456', 'Medical Aid');

--Select
SELECT * FROM "ResponseTeam"
WHERE "Specialization" = 'Medical Aid';

--Update
UPDATE "AffectedPerson"
SET "Status" = 'Relocated'
WHERE "PersonID" = 1;

--Delete
DELETE FROM "Deployment"
WHERE "DeploymentID" = 3;

--Advanced Query:Joins
SELECT RT."Name", D."DeploymentDate"
FROM "Deployment" D
JOIN "ResponseTeam" RT ON D."TeamID" = RT."TeamID"
WHERE D."EventID" = 1;

---functions
SELECT E."EventID", E."Type", SUM(RD."Quantity") AS "TotalAid"
FROM "ResourceDistribution" RD
JOIN "DisasterEvent" E ON RD."EventID" = E."EventID"
GROUP BY E."EventID", E."Type";

---
SELECT AP."FullName", AR."ResourceType", RD."Quantity"
FROM "ResourceDistribution" RD
JOIN "AffectedPerson" AP ON RD."PersonID" = AP."PersonID"
JOIN "AidResource" AR ON RD."ResourceID" = AR."ResourceID";

---Subquery
SELECT * FROM "DisasterEvent"
WHERE "EventID" IN (
    SELECT "EventID"
    FROM "ImpactReport"
    WHERE "Casualties" > 100
);

