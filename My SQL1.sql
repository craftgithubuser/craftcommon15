-- create schema student inffromation
create schema studentinfo;
CREATE TABLE studentinfo (
    id INT, 
    lastname VARCHAR(50),
    fistname VARCHAR(50),
    address VARCHAR(100)
);
alter table studentinfo
modify column address varchar(70) not null;

alter table studentinfo
add primary key (id);
