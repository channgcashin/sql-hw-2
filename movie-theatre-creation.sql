CREATE TABLE customer (
  customer_id SERIAL,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  billing_info VARCHAR(150),
  PRIMARY KEY (customer_id)
);

CREATE TABLE movie (
  movie_id SERIAL,
  movie_name VARCHAR(100),
  movie_duration SERIAL,
  PRIMARY KEY (movie_id)
);

CREATE TABLE ticket (
  ticket_id SERIAL,
  ticket_total NUMERIC(4,2),
  movie_id Integer,
  PRIMARY KEY (ticket_id),
  FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

CREATE TABLE concession (
  concession_id SERIAL,
  concession_total NUMERIC(4,2),
  PRIMARY KEY (concession_id)
);

CREATE TABLE order_ (
  order_id SERIAL,
  order_total NUMERIC(5,2),
  customer_id Integer,
  ticket_id Integer,
  concession_id Integer,
  PRIMARY KEY (order_id),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id),
  FOREIGN KEY (concession_id) REFERENCES concession(concession_id)
);


