use LibraryDB;
SELECT * FROM Books;
SELECT title, author_id FROM Books;
SELECT * FROM Books
WHERE author_id = 1;
SELECT * FROM Books
WHERE category_id = 1 AND author_id = 1;
SELECT * FROM Books
WHERE author_id = 1 OR category_id = 3;
SELECT * FROM Members
WHERE name LIKE 'A%';
SELECT * FROM Members
WHERE join_date BETWEEN '2023-01-01' AND '2023-03-31';
SELECT * FROM BorrowRecords
ORDER BY borrow_date ASC;
SELECT * FROM Books
ORDER BY title DESC;
SELECT * FROM Members
LIMIT 2;
SELECT * FROM Books
WHERE book_id IN (1, 3);
SELECT DISTINCT author_id FROM Books;
SELECT name AS 'Member Name' FROM Members;
SELECT m.name AS Member, b.title AS Book, br.borrow_date
FROM BorrowRecords br
JOIN Members m ON br.member_id = m.member_id
JOIN Books b ON br.book_id = b.book_id;
SELECT * FROM Books
WHERE author_id IS NULL;
