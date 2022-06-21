insert into customer(
	customer_id,
	first_name,
	last_name,
	billing_info
) values (
	1,
	'Chan',
	'Cashin',
	'1234-5678-9101-1121 123 1/02'
);

insert into movie(
	movie_id,
	movie_name,
	movie_duration
) values (
	1,
	'The Godfather',
	175
);

insert into ticket(
	ticket_id,
	ticket_total,
	movie_id
) values (
	1,
	20.00,
	1
);

insert into concession(
	concession_id,
	concession_total
) values (
	1,
	30.00
);

insert into order_(
	order_id,
	order_total,
	customer_id,
	ticket_id,
	concession_id
) values (
	1,
	50.00,
	1,
	1,
	1
);

