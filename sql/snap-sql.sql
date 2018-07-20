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
	commentDateTime TIMESTAMP NOT NULL,
	commentText VARCHAR(128),
	INDEX(commentDateTime),
	PRIMARY KEY(commentId)
);

INSERT INTO comments(commentId
				,commentDateTime
				,commentText)
VALUES 		(unhex("0132182920af4015a9fad968b0f44f7c")
				,"2018-07-20 08:25:34"
				,"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"
				);

INSERT INTO comments(commentId
				,commentDateTime
				,commentText)
VALUES 		(unhex("24f10a910d474c60bd66b3aa878b413b")
				,"2018-07-20 08:27:45"
				,"Into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheet"
				);