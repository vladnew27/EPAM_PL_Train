create database if not exists ticket_office;

create table if not exists ticket_office.stations
(
    id           int auto_increment unique
        primary key,
    country      varchar(20) null,
    city         varchar(20) null,
    station_name varchar(40) null
);

create table if not exists ticket_office.routes
(
    id        int auto_increment unique
        primary key,
    start_id  int      not null,
    departure datetime not null,
    finish_id int      not null,
    arrival   datetime not null,
    foreign key (start_id) references ticket_office.stations (id),
    foreign key (finish_id) references ticket_office.stations (id)
);



create table if not exists ticket_office.trains
(
    id           int auto_increment unique
        primary key,
    train_number int           not null,
    route        int           not null,
    total_seats  int default 0 null,
    booked_seats int default 0 null,
    cost         float         null,
    foreign key (route) references ticket_office.routes (id)
);

create table if not exists ticket_office.users
(
    id       int auto_increment unique
        primary key,
    login    varchar(50) unique not null,
    password varchar(100)       not null,
    isAdmin  tinyint(1)         null
);

create table if not exists ticket_office.tickets
(
    id        int auto_increment unique
        primary key,
    user_id   int                  null,
    train_id  int                  null,
    is_paid   tinyint(1) default 0 null,
    book_date datetime             null,
    paid_date datetime             null,
    foreign key (train_id) references ticket_office.trains (id),
    foreign key (user_id) references ticket_office.users (id)
);


