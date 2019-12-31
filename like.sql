SELECT title, author_fname FROM books WHERE author_fname LIKE '%da%';
 
SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%';
 
SELECT title FROM books WHERE title LIKE 'the';
 
SELECT title FROM books WHERE title LIKE '%the';
 
SELECT title FROM books WHERE title LIKE '%the%';

SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE "____"; -- the underscores specifies the desired digit count to be displayed

SELECT title FROM books WHERE title LIKE "%\%%";

SELECT title FROM books WHERE title LIKE "%\_%";

-- (235)234-0987 LIKE '(___)___-____'