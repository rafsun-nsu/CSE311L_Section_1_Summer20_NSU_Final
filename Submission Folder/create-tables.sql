CREATE TABLE student (
    snum decimal(9,0) NOT NULL,
    sname varchar(30),
    major varchar(25),
	level varchar(2),
    age  decimal(3,0),
    PRIMARY KEY (snum)
);

CREATE TABLE department (
    fid decimal(9,0) NOT NULL,
    fname varchar(30),
    deptid decimal(2,0),
    PRIMARY KEY (fid)
);

CREATE TABLE class (
    name varchar(40) NOT NULL, 
    meets_at varchar(20),
    room varchar(10),
    fid decimal(9,0),
    PRIMARY KEY (name),
    FOREIGN KEY (fid) REFERENCES department(fid)
);

CREATE TABLE course (
    snum decimal(9,0) NOT NULL,
    cname varchar(40) NOT NULL,
    PRIMARY KEY (snum, cname),
    FOREIGN KEY (snum) REFERENCES student(snum),
    FOREIGN KEY (cname) REFERENCES class(name)
);

CREATE TABLE provider (
    sid int(9) NOT NULL,
    sname varchar(30),
    address varchar(40),
    PRIMARY KEY (sid)
);

CREATE TABLE goodies (
    pid int(9) NOT NULL,
    pname varchar(40),
    color varchar(15),
    PRIMARY KEY (pid)
);

CREATE TABLE stock (
    sid int(9) NOT NULL,
    pid int(9) NOT NULL,
    cost int(10),
    PRIMARY KEY (sid, pid),
    FOREIGN KEY (pid) REFERENCES goodies(pid)
);