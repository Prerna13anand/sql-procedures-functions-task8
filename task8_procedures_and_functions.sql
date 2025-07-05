
-- PART 1: SETUP - CREATE DATABASE, TABLES, AND INSERT DATA
CREATE DATABASE IF NOT EXISTS BookstoreDB_Task8;
USE BookstoreDB_Task8;

CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT NOT NULL
);

INSERT INTO Books (Title, Author, Price, StockQuantity) VALUES
('The Alchemist', 'Paulo Coelho', 12.99, 50),
('1984', 'George Orwell', 9.50, 80),
('Malgudi Days', 'R. K. Narayan', 11.00, 45),
('Animal Farm', 'George Orwell', 7.99, 100);

-- PART 2: CREATING A STORED PROCEDURE
-- This procedure finds all books by a specific author.


-- We change the DELIMITER so MySQL knows that the whole block of code
-- from CREATE PROCEDURE to END is a single statement.
DELIMITER $$

CREATE PROCEDURE GetBooksByAuthor(IN author_name VARCHAR(100))
BEGIN
    -- This is the query that will run when we call the procedure.
    -- It uses the input parameter 'author_name'.
    SELECT Title, Price, StockQuantity
    FROM Books
    WHERE Author = author_name;
END$$

-- We change the DELIMITER back to the default semicolon.
DELIMITER ;

-- How to use the Stored Procedure:
-- Let's find all books by 'George Orwell'.
CALL GetBooksByAuthor('George Orwell');

-- PART 3: CREATING A FUNCTION
-- This function calculates the total value of a book's stock.

DELIMITER $$

CREATE FUNCTION CalculateStockValue(price DECIMAL(10, 2), quantity INT)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    -- A function must return a single value.
    DECLARE total_value DECIMAL(10, 2);
    SET total_value = price * quantity;
    RETURN total_value;
END$$

DELIMITER ;

-- How to use the Function:
-- Let's get the title, price, and calculated stock value for all books.
SELECT
    Title,
    Price,
    StockQuantity,
    CalculateStockValue(Price, StockQuantity) AS StockValue
FROM Books;