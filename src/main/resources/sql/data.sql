INSERT INTO ticket_office.users (id, login, password, isAdmin)
VALUES (1, 'admin', 'admin', 1),
       (2, 'Boris', 'boris', 0),
       (3, 'Adam', 'adam', 0),
       (4, 'Nelly', 'nelly', 0);

INSERT INTO ticket_office.stations (id, country, city, station_name)
VALUES (1, 'Poland', 'Warsaw', 'Warsaw-Central'),
       (2, 'Poland', 'Warsaw', 'Warsaw-West'),
       (3, 'Poland', 'Warsaw', 'Warsaw-East'),
       (4, 'Poland', 'Gdansk', 'Gdansk-Central'),
       (5, 'Poland', 'Krakow', 'Krakow-Main'),
       (6, 'Ukraine', 'Kiev', 'Kiev-Central'),
       (7, 'Ukraine', 'Lviv', 'Lviv-Central'),
       (8, 'Poland', 'Wroclaw', 'Wroclaw-Downtown');

INSERT INTO ticket_office.routes (id, start_id, departure, finish_id, arrival)
VALUES (1, 1, '2022-11-03 16:45:17', 8, '2022-11-03 19:45:17'),
 (2, 5, '2022-11-06 09:45:17', 6, '2022-11-06 17:45:17'),
 (3, 4, '2022-11-03 16:34:17', 1, '2022-11-06 09:45:17'),
 (4, 6, '2022-10-03 16:45:17', 1, '2022-10-03 18:45:17'),
 (5, 8, '2022-11-03 16:45:17', 1, '2022-11-03 21:45:17');

INSERT INTO ticket_office.trains (id, train_number, route, total_seats, booked_seats, cost)
VALUES (1, 224875, 1, 100, 0, 5.6),
 (2, 127289, 4, 200, 0, 48.5),
 (3, 489115, 5, 150, 0, 458.3),
 (4, 486311, 3, 220, 0, 42.66),
 (5, 94516, 2, 20, 0, 485.3);

INSERT INTO ticket_office.tickets (id, user_id, train_id, is_paid, book_date, paid_date)
VALUES (1, 2, 1, 1, '2022-08-02 17:27:56', '2022-08-02 17:27:56'),
 (2, 3, 2, 1, '2022-08-02 17:27:56', '2022-08-02 17:27:56'),
 (3, 4, 3, 1, '2022-08-02 13:27:56', '2022-08-02 13:27:56'),
 (4, 3, 4, 1, '2022-08-02 13:27:56', '2022-08-02 13:27:56'),
 (5, 3, 5, 1, '2022-08-02 13:27:56', '2022-08-02 13:27:56'),
 (6, 2, 1, 1, '2022-08-02 13:27:56', '2022-08-02 13:27:56'),
 (7, 4, 3, 1, '2022-08-01 17:28:18', '2022-08-01 17:31:18'),
 (8, 2, 2, 1, '2022-08-01 17:28:18', '2022-08-01 17:31:18'),
 (9, 3, 4, 0, '2022-08-03 17:28:29', null),
 (10, 4, 3, 0, '2022-08-03 17:28:32', null),
 (11, 2, 2, 0, '2022-08-03 17:28:34', null);
