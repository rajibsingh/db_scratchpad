CREATE TABLE family (
    id MEDIUMINT NOT NULL AUTO_INCREMENT,
    name CHAR(30) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE person (
    id MEDIUMINT NOT NULL AUTO_INCREMENT,
    name CHAR(30) NOT NULL,
    family_id MEDIUMINT,
    PRIMARY KEY (id),
    FOREIGN KEY (family_id)
        REFERENCES family(id)
        ON DELETE CASCADE
) ENGINE=INNODB;

CREATE TABLE vehicle (
    id MEDIUMINT NOT NULL AUTO_INCREMENT,
    name CHAR(30) NOT NULL,
    family_id MEDIUMINT,
    PRIMARY KEY (id),
    FOREIGN KEY (family_id)
        REFERENCES family(id)
        ON DELETE CASCADE
) ENGINE=INNODB;

CREATE TABLE vehicle_person (
    person_id MEDIUMINT,
    vehicle_id MEDIUMINT,
    PRIMARY KEY (person_id, vehicle_id),
    FOREIGN KEY (person_id)
        REFERENCES person(id)
        ON DELETE CASCADE,
    FOREIGN KEY (vehicle_id)
        REFERENCES vehicle(id)
        ON DELETE CASCADE
);

insert into family (name) values ('singh');
insert into person (family_id, name) values (1, 'raj');
insert into person (family_id, name) values (1, 'ravi');
insert into vehicle (family_id, name) values (1, 'porsche');
insert into vehicle (family_id, name) values (1, 'little tykes');
insert into vehicle_person (person_id, vehicle_id) values (1, 1);
insert into vehicle_person (person_id, vehicle_id) values (1, 2);
insert into vehicle_person (person_id, vehicle_id) values (2, 2);

select * from
