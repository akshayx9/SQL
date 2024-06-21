-- Using REVERSE function to reverse a string

SELECT REVERSE('Hello World');

-- Using REVERSE on authors' first name

SELECT REVERSE(author_fname) FROM books;

-- Change every author name into a palindrome by adding reverse of their first name

SELECT CONCAT(author_fname, REVERSE(author_fname)) FROM books;
