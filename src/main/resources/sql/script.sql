create table if not exists trains.stations
(
    id           int auto_increment
        primary key,
    country      varchar(20) null,
    city         varchar(20) null,
    station_name varchar(40) null,
    constraint stations_id_uindex
        unique (id)
);

create table if not exists trains.routes
(
    id        int     auto_increment
        primary key,
    start_id  int      not null,
    departure datetime not null,
    finish_id int      not null,
    arrival   datetime not null,
    constraint routes_ibfk_1
        foreign key (start_id) references trains.stations (id),
    constraint routes_ibfk_2
        foreign key (finish_id) references trains.stations (id)
);

create index finish_id
    on trains.routes (finish_id);

create index start_id
    on trains.routes (start_id);

create table if not exists trains.trains
(
    id           int auto_increment
        primary key,
    train_number int           not null,
    route        int           not null,
    total_seats  int default 0 null,
    booked_seats int           null,
    cost         float         null,
    constraint trains_id_uindex
        unique (id),
    constraint trains_routes_id_fk
        foreign key (route) references trains.routes (id)
);

create table if not exists trains.users
(
    id       int auto_increment
        primary key,
    login    varchar(50)  not null,
    password varchar(100) not null,
    isAdmin  tinyint(1)   null,
    constraint users_id_uindex
        unique (id),
    constraint users_id_uindex_2
        unique (id),
    constraint users_login_uindex
        unique (login)
);

create table if not exists trains.tickets
(
    id        int auto_increment
        primary key,
    user_id   int                  null,
    train_id  int                  null,
    is_paid   tinyint(1) default 0 null,
    book_date datetime             null,
    paid_date datetime             null,
    constraint tickets_id_uindex
        unique (id),
    constraint tickets_trains_id_fk
        foreign key (train_id) references trains.trains (id),
    constraint tickets_users_id_fk
        foreign key (user_id) references trains.users (id)
);


