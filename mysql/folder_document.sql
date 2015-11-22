CREATE TABLE folder (
    id MEDIUMINT NOT NULL AUTO_INCREMENT,
    name CHAR(30) NOT NULL,
    parent_id MEDIUMINT,
    PRIMARY KEY (id),
    FOREIGN KEY (parent_id)
        REFERENCES folder(id)
        ON DELETE CASCADE
) ENGINE=INNODB;

CREATE TABLE file (
    id MEDIUMINT NOT NULL AUTO_INCREMENT,
    name CHAR(30) NOT NULL,
    parent_id MEDIUMINT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (parent_id)
        REFERENCES folder(id)
        ON DELETE CASCADE
) ENGINE=INNODB;

insert into folder (name) values ("/");
insert into folder (name, parent_id) values ("home", 1);
insert into folder (name, parent_id) values ("raj", 2);
insert into folder (name, parent_id) values ("guest", 2);



select * from
