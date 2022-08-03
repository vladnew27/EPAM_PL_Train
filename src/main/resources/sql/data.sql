INSERT INTO trains.users (id, login, password, isAdmin) VALUES (1, 'admin', 'admin', 1);
INSERT INTO trains.users (id, login, password, isAdmin) VALUES (2, 'Boris', 'boris', 0);
INSERT INTO trains.users (id, login, password, isAdmin) VALUES (3, 'Adam', 'adam', 0);
INSERT INTO trains.users (id, login, password, isAdmin) VALUES (4, 'Nelly', 'nelly', 0);

INSERT INTO trains.stations (id, country, city, station_name) VALUES (1, 'Poland', 'Warsaw', 'Warsaw-Central');
INSERT INTO trains.stations (id, country, city, station_name) VALUES (2, 'Poland', 'Warsaw', 'Warsaw-West');
INSERT INTO trains.stations (id, country, city, station_name) VALUES (3, 'Poland', 'Warsaw', 'Warsaw-East');
INSERT INTO trains.stations (id, country, city, station_name) VALUES (4, 'Poland', 'Gdansk', 'Gdansk-Central');
INSERT INTO trains.stations (id, country, city, station_name) VALUES (5, 'Poland', 'Krakow', 'Krakow-Main');
INSERT INTO trains.stations (id, country, city, station_name) VALUES (6, 'Ukraine', 'Kiev', 'Kiev-Central');
INSERT INTO trains.stations (id, country, city, station_name) VALUES (7, 'Ukraine', 'Lviv', 'Lviv-Central');
INSERT INTO trains.stations (id, country, city, station_name) VALUES (8, 'Poland', 'Wroclaw', 'Wroclaw-Downtown');

INSERT INTO trains.routes (id, start_id, departure, finish_id, arrival) VALUES (1, 1, '2022-11-03 16:45:17', 8, '2022-11-03 19:45:17');
INSERT INTO trains.routes (id, start_id, departure, finish_id, arrival) VALUES (2, 5, '2022-11-06 09:45:17', 6, '2022-11-06 17:45:17');
INSERT INTO trains.routes (id, start_id, departure, finish_id, arrival) VALUES (3, 4, '2022-11-03 16:34:17', 1, '2022-11-06 09:45:17');
INSERT INTO trains.routes (id, start_id, departure, finish_id, arrival) VALUES (4, 6, '2022-10-03 16:45:17', 1, '2022-10-03 18:45:17');
INSERT INTO trains.routes (id, start_id, departure, finish_id, arrival) VALUES (5, 8, '2022-11-03 16:45:17', 1, '2022-11-03 21:45:17');

INSERT INTO trains.trains (id, train_number, route, total_seats, booked_seats, cost) VALUES (1, 224875, 1, 100, 0, 5.6);
INSERT INTO trains.trains (id, train_number, route, total_seats, booked_seats, cost) VALUES (2, 127289, 4, 200, 0, 48.5);
INSERT INTO trains.trains (id, train_number, route, total_seats, booked_seats, cost) VALUES (3, 489115, 5, 150, 0, 458.3);
INSERT INTO trains.trains (id, train_number, route, total_seats, booked_seats, cost) VALUES (4, 486311, 3, 220, 0, 42.66);
INSERT INTO trains.trains (id, train_number, route, total_seats, booked_seats, cost) VALUES (5, 94516, 2, 20, 0, 485.3);

INSERT INTO trains.tickets (id, user_id, train_id, is_paid, book_date, paid_date) VALUES (1, 2, 1, 1, '2022-08-02 17:27:56', '2022-08-02 17:27:56');
INSERT INTO trains.tickets (id, user_id, train_id, is_paid, book_date, paid_date) VALUES (2, 3, 2, 1, '2022-08-02 17:27:56', '2022-08-02 17:27:56');
INSERT INTO trains.tickets (id, user_id, train_id, is_paid, book_date, paid_date) VALUES (3, 4, 3, 1, '2022-08-02 13:27:56', '2022-08-02 13:27:56');
INSERT INTO trains.tickets (id, user_id, train_id, is_paid, book_date, paid_date) VALUES (4, 3, 4, 1, '2022-08-02 13:27:56', '2022-08-02 13:27:56');
INSERT INTO trains.tickets (id, user_id, train_id, is_paid, book_date, paid_date) VALUES (5, 3, 5, 1, '2022-08-02 13:27:56', '2022-08-02 13:27:56');
INSERT INTO trains.tickets (id, user_id, train_id, is_paid, book_date, paid_date) VALUES (6, 2, 1, 1, '2022-08-02 13:27:56', '2022-08-02 13:27:56');
INSERT INTO trains.tickets (id, user_id, train_id, is_paid, book_date, paid_date) VALUES (7, 4, 3, 1, '2022-08-01 17:28:18', '2022-08-01 17:31:18');
INSERT INTO trains.tickets (id, user_id, train_id, is_paid, book_date, paid_date) VALUES (8, 2, 2, 1, '2022-08-01 17:28:18', '2022-08-01 17:31:18');
INSERT INTO trains.tickets (id, user_id, train_id, is_paid, book_date, paid_date) VALUES (9, 3, 4, 0, '2022-08-03 17:28:29', null);
INSERT INTO trains.tickets (id, user_id, train_id, is_paid, book_date, paid_date) VALUES (10, 4, 3, 0, '2022-08-03 17:28:32', null);
INSERT INTO trains.tickets (id, user_id, train_id, is_paid, book_date, paid_date) VALUES (11, 2, 2, 0, '2022-08-03 17:28:34', null);
