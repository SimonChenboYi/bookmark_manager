-- Insert four links in the bookmarks table
INSERT INTO bookmarks(url)
VALUES('http://www.makersacademy.com'), ('http://askjeeves.com'), ('http://twitter.com'), ('http://www.google.com');

-- list the four entries
SELECT url FROM bookmarks;

-- delete the twitter url
DELETE FROM bookmarks WHERE url = 'http://twitter.com';

-- update the value of a url in the table
UPDATE bookmarks SET url = 'http://www.destroyallsoftware.com' WHERE url = 'http://askjeeves.com';
