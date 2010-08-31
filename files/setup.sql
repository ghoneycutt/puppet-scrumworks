CREATE database if not exists scrumworks;
CREATE user 'scrumworks'@'localhost' identified by 'notagoodpassword';
GRANT ALL on scrumworks.* to 'scrumworks'@'localhost';

flush privileges;
