-- COUNT
-- SELECT COUNT(*) AS "books count" FROM books;

-- SELECT COUNT(DISTINCT author_fname) AS "author first names count" FROM books;

-- SELECT COUNT(DISTINCT author_lname, author_fname) AS "author first names count" FROM books;

-- SELECT COUNT(*) FROM books WHERE title LIKE "%the%";

-- SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname;

-- SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

-- SELECT CONCAT("In ", released_year, " ", COUNT(*), " book(s) released.") AS year FROM books GROUP BY released_year;



-- MIN and MAX
SELECT * FROM books WHERE pages = (SELECT Min(pages) FROM books); 
 
SELECT title, pages FROM books WHERE pages = (SELECT Max(pages) FROM books); 
 
SELECT title, pages FROM books WHERE pages = (SELECT Min(pages) FROM books); 
 
SELECT * FROM books ORDER BY pages ASC LIMIT 1;
 
SELECT title, pages FROM books ORDER BY pages ASC LIMIT 1;
 
SELECT * FROM books ORDER BY pages DESC LIMIT 1;
