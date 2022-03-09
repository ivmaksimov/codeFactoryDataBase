-- displaying  the book  id, title and the author    (inner join)
SELECT books.book_id, books.title, author.author_name
FROM books JOIN author on books.book_id = author.author_id;

-- Displaying  the book  id, title, genre and pubication date  (left join)
SELECT books.book_id, books.title, books.genre, dates.publication_date
FROM books LEFT JOIN dates on books.book_id = dates.date_id;

-- Displaying  the book id, title, genre and author  (left join)
SELECT books.book_id, books.title, books.genre, author.author_name
FROM books LEFT JOIN author on books.book_id = author.author_id;


-- Displaying  the book title, genre and publication date (right join)
SELECT books.book_id, books.title, books.genre, dates.publication_date, dates.buying
FROM books RIGHT JOIN dates on books.book_id = dates.date_id;

-- Displaying  the book id, title, pages, start reading and end of the reading  (left join)
SELECT books.book_id, books.title, books.pages, dates.start_reading, dates.end_reading
FROM books LEFT JOIN dates on books.book_id = dates.date_id;


-- Displaying  the book id, title, pages, genre, author name, author country and publisher name  (multiple inner joins)
SELECT books.book_id, books.title, books.genre, author.author_name, author.author_country, publishers.publisher_name
FROM books JOIN author on books.book_id = author.author_id JOIN publishers on book_id = publisher_id;


-- Displaying  the book id, title, pages, genre, author name, author country, publisher name and date of publication  (multiple inner joins)
SELECT books.book_id, books.title, books.genre, author.author_name, author.author_country, publishers.publisher_name, dates.publication_date
FROM books JOIN author on books.book_id = author.author_id JOIN publishers on book_id = publisher_id JOIN dates on book_id = date_id;


-- Displaying  the book id, title, publication date and author name  (multiple  joins right join + inner join)
SELECT books.book_id, books.title, dates.publication_date, author.author_name
FROM books RIGHT JOIN dates on books.book_id = dates.date_id JOIN author on books.book_id = author.author_id;

-- Displaying  the book id, title, publication date, author name, how many books from author and publisher name (multiple  joins left join + right join + inner join)
SELECT books.book_id, books.title, dates.publication_date, author.author_name, author.books_writen, publishers.publisher_name
FROM books LEFT JOIN dates on books.book_id = dates.date_id JOIN author on books.book_id = author.author_id RIGHT JOIN publishers on books.book_id = publishers.publisher_id;

