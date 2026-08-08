Create database ElectionDB;
use ElectionDB;
Create Table politicalParty(
party_id int primary key auto_increment,
party_name varchar(50)


);
create table constituency(
cons_id int primary key auto_increment,
cons_name varchar(200),
state varchar(100)

);
create table Election(
election_id int primary key auto_increment,
election_name varchar(200),
election_date date

);
create table voter(
voter_id int primary key auto_increment,
voter_name varchar(200),
age int ,
gender varchar(200),
constituency_id int,
voter_status varchar(200) DEFAULT "Active",
FOREIGN KEY (constituency_id) REFERENCEs constituency(cons_id)

);
select * from voter;
create table candidate(
cand_id int primary key auto_increment,
cand_name varchar(200),
age int ,
gender varchar(200),
constituency_id int,
party_id int,
FOREIGN KEY (constituency_id) REFERENCEs constituency(cons_id),
FOREIGN KEY (party_id) references politicalParty(party_id)
);
create table booths(
booth_id int primary key auto_increment,
booth_name varchar(200),
location varchar(200),
constituency_id int,
total_capacity int,
foreign key (constituency_id) REFERENCES constituency(cons_id)


);
create table vote(
vote_id int primary key auto_increment,
vote_name varchar(200),
voter_id INT,
    candidate_id INT,
    election_id INT,
    booth_id INT,
    vote_time DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (voter_id)
    REFERENCES Voter(voter_id),

    FOREIGN KEY (candidate_id)
    REFERENCES candidate(cand_id),

    FOREIGN KEY (election_id)
    REFERENCES Election(election_id),

    FOREIGN KEY (booth_id)
    REFERENCES booths(booth_id),

    UNIQUE (voter_id, election_id)



);
INSERT INTO politicalParty (party_name)
VALUES
('People Democratic Party'),
('National Progress Party'),
('United Front Party');
INSERT INTO constituency (cons_name, state)
VALUES
('Chennai Central', 'Tamil Nadu'),
('Coimbatore North', 'Tamil Nadu'),
('Madurai South', 'Tamil Nadu');
INSERT INTO Election
(election_name, election_date)
VALUES
('Tamil Nadu Assembly Election 2026', '2026-08-15'),
('Local Body Election 2026', '2026-10-10');
INSERT INTO Voter
(voter_name, age, gender, constituency_id)
VALUES
('Arun Kumar', 25, 'Male', 1),
('Priya', 30, 'Female', 1),
('Rahul', 28, 'Male', 2),
('Divya', 35, 'Female', 3);
INSERT INTO Candidate
(cand_name, age, gender, party_id, constituency_id)
VALUES
('Karthik', 45, 'Male', 1, 1),
('Suresh', 50, 'Male', 2, 1),
('Meena', 42, 'Female', 3, 2),
('Rajesh', 48, 'Male', 1, 3);
INSERT INTO booths
(booth_name, location, constituency_id, total_capacity)
VALUES
('Booth 101', 'Government School Chennai', 1, 1000),
('Booth 102', 'Community Hall Chennai', 1, 800),
('Booth 201', 'Government School Coimbatore', 2, 900),
('Booth 301', 'Government School Madurai', 3, 850);
INSERT INTO Vote
(voter_id, candidate_id, election_id, booth_id)
VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 1, 3),
(4, 4, 1, 4);
SELECT * FROM Voter;