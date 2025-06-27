
-- Count total number of books in each genre
SELECT Genre, COUNT(*) AS TotalBooks
FROM Book
GROUP BY Genre;

-- Count total number of loans made by each member (by MemberID)
SELECT MemberID, COUNT(*) AS TotalLoans
FROM Loan
GROUP BY MemberID;

-- Show members who borrowed more than 2 books
SELECT MemberID, COUNT(*) AS LoanCount
FROM Loan
GROUP BY MemberID
HAVING COUNT(*) > 2;

-- Count number of books published each year
SELECT YearPublished, COUNT(*) AS BooksCount
FROM Book
GROUP BY YearPublished
ORDER BY YearPublished DESC;

-- Find the shortest and longest loan durations (in days)
SELECT 
    MIN(DATEDIFF(ReturnDate, LoanDate)) AS ShortestLoanDuration,
    MAX(DATEDIFF(ReturnDate, LoanDate)) AS LongestLoanDuration
FROM Loan
WHERE ReturnDate IS NOT NULL;

-- Total number of books loaned (total rows in Loan table)
SELECT COUNT(*) AS TotalBooksLoaned
FROM Loan;

-- Total number of days all books were borrowed (only returned books)
SELECT SUM(DATEDIFF(ReturnDate, LoanDate)) AS TotalLoanDays
FROM Loan
WHERE ReturnDate IS NOT NULL;

-- Average loan duration in days (for returned books only)
SELECT MemberID, 
       AVG(DATEDIFF(ReturnDate, LoanDate)) AS AvgLoanDuration
FROM Loan
WHERE ReturnDate IS NOT NULL
GROUP BY MemberID;

-- First and most recent member join dates
SELECT 
    MIN(JoinDate) AS FirstJoinedMember,
    MAX(JoinDate) AS LatestJoinedMember
FROM Member;

-- Members whose average loan duration is more than 10 days
SELECT MemberID, AVG(DATEDIFF(ReturnDate, LoanDate)) AS AvgLoanDuration
FROM Loan
WHERE ReturnDate IS NOT NULL
GROUP BY MemberID
HAVING AVG(DATEDIFF(ReturnDate, LoanDate)) > 10;


