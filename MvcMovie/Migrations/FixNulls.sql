-- set sane defaults for existing rows
UPDATE Movies
SET ReleaseDate = '2000-01-01', Price = 0.00
WHERE ReleaseDate IS NULL OR Price IS NULL;

-- then make columns NOT NULL (SQL Server example)
ALTER TABLE Movies
ALTER COLUMN ReleaseDate DATETIME NOT NULL;

ALTER TABLE Movies
ALTER COLUMN Price DECIMAL(18,2) NOT NULL;