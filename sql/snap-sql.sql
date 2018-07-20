-- comment:
-- commentId (binary, uuid)
-- commentDatTime (timestamp)
-- commentText(string, 128 chars)

-- Create Table and two insert statements
-- YYYY-MM-DD HH:MM:SS

DROP TABLE IF EXISTS comments;

-- create the comment entity
CREATE TABLE comments (
	commentId BINARY(16) NOT NULL,
	commentDateTime TIMESTAMP(6) NOT NULL,
	commentText VARCHAR(128),
	INDEX(commentDateTime),
	PRIMARY KEY(commentId)
);

INSERT INTO comments(commentId,commentDateTime,commentText) VALUES
	(unhex("0132182920af4015a9fad968b0f44f7c"),"2018-07-20 07:15:31","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard");

INSERT INTO comments(commentId,commentDateTime,commentText) VALUES
	(unhex("f09157d2f2b04be4b2d281b7efdc9c22"),"2018-07-20 08:32:45","It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged");