CREATE TABLE category (
    category_id VARCHAR(10) PRIMARY KEY,
    category VARCHAR(200) NOT NULL
);

CREATE TABLE subcategory(
	subcategory_id VARCHAR(10) PRIMARY KEY,
	subcategory VARCHAR(200) NOT NULL
);

CREATE TABLE contacts(
	contact_id int PRIMARY KEY,
	first_name VARCHAR(200) NOT NULL,
	last_name VARCHAR(200) NOT NULL
);

CREATE TABLE campaign(
	cf_id int PRIMARY KEY,
	contact_id int REFERENCES contacts(contact_id),
	company_name VARCHAR(200) NOT NULL,
	description text,
	goal FLOAT,
	pledged FLOAT,
	outcome VARCHAR(50),
	backers_count int,
	country VARCHAR(50),
	currency VARCHAR,
	launch_date TIMESTAMP,
	end_date TIMESTAMP,
	category_id VARCHAR(10) REFERENCES category(category_id),
	subcategory_id VARCHAR(10) REFERENCES subcategory(subcategory_id)
)