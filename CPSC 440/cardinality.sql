drop table if exists student cascade;
drop table if exists dorm_room cascade;
drop table if exists developer cascade;
drop table if exists workstation cascade;
drop table if exists pupil cascade;
drop table if exists assigned_seat cascade;
drop table if exists artist cascade;
drop table if exists painting cascade;
drop table if exists dorm_resident cascade;
drop table if exists patient cascade;
drop table if exists prescription cascade;
drop table if exists doctor cascade;
drop table if exists medication cascade;

create table dorm_room(
    building text unique,
    number text unique,
    constraint dorm_room_pk primary key (building, number)
);

create table student(
    id int primary key,
    first_name text NOT NULL,
    last_name text NOT NULL,
    dorm_room_building text unique,
    dorm_room_number text unique,
    constraint dorm_room_building FOREIGN KEY (dorm_room_building) REFERENCES dorm_room(building),
    constraint dorm_room_number FOREIGN KEY (dorm_room_number) REFERENCES dorm_room(number),
    constraint STU_FK foreign key (dorm_room_building, dorm_room_number) references dorm_room(building,number) 
);

create table workstation(
    hostname text primary key
);

create table developer(
    first_name text NOT NULL,
    last_name text NOT NULL,
    constraint developer_pk primary key (first_name,last_name),
    workstation_hostname text not null unique references workstation(hostname)
);

create table assigned_seat(
    number int primary key
);

create table pupil(
    id int primary key,
    name text,
    assigned_seat_number int unique references assigned_seat(number)
);



create table artist(
	name text primary key,
    year_born int not null,
    year_died int
);

create table painting(
    id int primary key,
    name text,
    artist_name text unique not null,
    constraint artist_name foreign key (artist_name) references artist(name)
);

create table patient(
  	id int primary key,
    first_name text NOT NULL,
    last_name text NOT NULL
);

create table medication(
 	name text primary key   
);

create table doctor(
  	id int primary key  
);

create table prescription(
    patient_id int,
    doctor_id int,
    medication_name text,
    
	constraint patient_id foreign key (patient_id) references patient(id),
    constraint doctor_id foreign key (doctor_id) references doctor(id),
    constraint medication_name foreign key (medication_name) references medication(name),
    constraint prescription_pk primary key (patient_id,doctor_id,medication_name)
    
);
    
create table dorm_resident(
    id int primary key,
    first_name text NOT NULL,
    last_name text NOT NULL,
    room_number INT,
    resident_assistant int,
    constraint resident_assistant foreign key (resident_assistant) references dorm_resident(id)
);
    