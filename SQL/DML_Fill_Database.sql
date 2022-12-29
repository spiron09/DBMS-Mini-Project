USE Issues_PES1UG20CS462;

INSERT INTO Status VALUES
(0, "Opened"),
(1, "Viewed"),
(2, "Under Review"),
(3, "In Progress"),
(4, "Solved"),
(5, "Expired");

INSERT INTO Role VALUES
(401, "Admin", "Has ultimate access to the Issues"),
(301, "Manager", "Fixes valid issues approved by assignee"),
(202, "Assignee", "Assigns issues to the right staff"),
(201, "Reviewer", "Reviews issues to check if they are valid"),
(102, "Teacher", "Teaches students"),
(101, "Student", "Raises issues");

INSERT INTO Type VALUES
(11, "Classroom"),
(12, "Teacher"),
(13, "Assignment"),
(14, "Marks"),
(15, "Miscellaneous"),
(21, "Monetary"),
(22, "Events");

INSERT INTO User VALUES
(66666, "admin@gmail.com", "Admin", "9874535997", 401),
(64654, "joseph@gmail.com", "Joseph", "6546468456", 301),
(62844, "ram@gmail.com", "Ram", "8945646464", 301),
(58154, "raju@gmail.com", "Raju", "4646941651", 202),
(51541, "pam@gmail.com", "Pam", "5464654654", 201),
(54154, "wade@gmail.com", "Wade", "6546418454", 201),
(41261, "mitchell@gmail.com", "Mitchell", "5464115761", 102),
(48451, "claire@gmail.com", "Claire", "5646515614", 102),
(42342, "sneha@gmail.com", "Sneha", "9864145684", 102),
(49077, "phil@gmail.com", "Phil", "4145846464", 102),
(32432, "tarun@gmail.com", "Tarun", "8974465464", 101),
(34234, "varun@gmail.com", "Varun", "8697645644", 101),
(39432, "tejas@gmail.com", "Tejas", "2346454254", 101),
(38431, "sahaja@gmail.com", "Sahaja", "2934729837", 101),
(32972, "arjun@gmail.com", "Arjun", "2349823977", 101),
(32144, "venkat@gmail.com", "Venkat", "2342323422", 101),
(34566, "taanisha@gmail.com", "Taanisha", "2349034423", 101),
(31434, "mohan@gmail.com", "Mohan", "2341239847", 101);

INSERT INTO Issue VALUES
(10234, "Attendance shouldn't be mandatory", "2022-10-20", 0, 32972, 11),
(12342, "Refund for Samarpana", "2022-09-15", 0, 32144, 21),
(14323, "Hackathon prize not received yet", "2022-10-06", 0, 38431, 22),
(16345, "Marks not updated in GTA", "2022-09-29", 1, 34566, 14),
(18345, "Login access revoked", "2022-08-19", 1, 41261, 15),
(13123, "Assignment marks haven't synced", "2022-11-04", 2, 48451, 13),
(15234, "Paper review money has not been reflected", "2022-09-11", 2, 34234, 21),
(19345, "Need to change password", "2022-08-14", 2, 54154, 15),
(17546, "Syllabus is not clearly defined", "2022-08-19", 3, 49077, 11),
(18446, "Wi-Fi is not working in B204", "2022-09-01", 3, 54154, 15),
(14455, "Attendance not updated", "2022-09-18", 3, 32144, 11);

INSERT INTO Attachment VALUES
(20215, "payment_run", "jpg", 12342),
(21812, "marks_sheet", "xlsx", 16345),
(29745, "payemnt_review", "jpg", 15234),
(24685, "payment_pesuacademy", "jpg", 15234),
(27645, "syllabus_DBMS", "pdf", 17546),
(29494, "internet_speed_1", "jpg", 18446),
(26425, "internet_speed_2", "jpg", 18446);