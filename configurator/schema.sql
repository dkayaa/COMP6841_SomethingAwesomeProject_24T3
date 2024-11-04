DROP TABLE IF EXISTS domains;
DROP TABLE IF EXISTS traffic;
DROP TABLE IF EXISTS clients;
DROP TABLE IF EXISTS configs;

CREATE TABLE domains (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	domain_ip TEXT NOT NULL,
	domain_url TEXT NOT NULL,
	created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	modified TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP

);

CREATE TABLE clients (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	client_id TEXT NOT NULL,
	is_connected INTEGER NOT NULL,
	created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	modified TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE configs (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	config_id TEXT NOT NULL,
	config_value TEXT,
	config_description TEXT,
	modified TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);