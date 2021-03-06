CREATE TABLE t_student (
	id VARCHAR ( 32 ) NOT NULL COMMENT 'student id',
	name VARCHAR ( 32 ) COMMENT 'student name',
	age INT ( 11 ) COMMENT 'student age',
	sex VARCHAR ( 10 ) COMMENT 'student sex male/female',
	PRIMARY KEY ( id ) 
);
CREATE TABLE t_subject (
	id VARCHAR ( 32 ) NOT NULL COMMENT 'subject id',
	subject VARCHAR ( 32 ) COMMENT 'student name',
	teacher VARCHAR ( 20 ) COMMENT 'student age',
	description VARCHAR ( 200 ),
	PRIMARY KEY ( id ) 
);
CREATE TABLE t_score (
	id INT ( 11 ) NOT NULL AUTO_INCREMENT,
	student_id VARCHAR ( 32 ) COMMENT 'student id',
	subject_id VARCHAR ( 32 ) COMMENT 'subject id',
	score FLOAT,
	PRIMARY KEY ( id ),
	FOREIGN KEY ( student_id ) REFERENCES t_student ( id ),
	FOREIGN KEY ( subject_id ) REFERENCES t_subject ( id ) 
);
INSERT INTO t_student
VALUES
	( '001', '张三', 18, 'male' ),
	( '002', '李四', 20, 'female' );
INSERT INTO t_subject
VALUES
	( '1001', '语文', '王老师', '本次考试比较简单' ),
	( '1002', '数学', '刘老师', '本次考试比较难' );
INSERT INTO t_score(student_id, subject_id, score)
VALUES
	( '001', '1001', 80 ),
	( '002', '1002', 60 ),
	( '001', '1001', 70 ),
	(
		'002',
	'1002',
	60.5)