-- Create book table
CREATE TABLE Book (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100)
);
-- Create member table
CREATE TABLE Member (
    member_id INT PRIMARY KEY,
    member_name VARCHAR(100)
);
-- Create transaction table
CREATE TABLE Transaction (
    trans_id INT PRIMARY KEY,
    book_id INT,
    member_id INT,
    issue_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Book(book_id),
    FOREIGN KEY (member_id) REFERENCES Member(member_id)
);
-- Insert sample data
INSERT INTO Book (book_id, title, author) VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald'),
(2, '1984', 'George Orwell');
INSERT INTO Member (member_id, member_name) VALUES
(1, 'Alice'),
(2, 'Bob');
INSERT INTO Transaction (trans_id, book_id, member_id, issue_date, return_date) VALUES
(1, 1, 1, '2025-01-15', '2025-02-15'),
(2, 2, 2, '2025-02-01', '2025-02-10');
-- Get transaction details for each book
SELECT b.title, m.member_name, t.issue_date, t.return_date
FROM Transaction t
INNER JOIN Book b ON t.book_id = b.book_id
INNER JOIN Member m ON t.member_id = m.member_id;
