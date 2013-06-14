drop table if exists members;

create table members (
  id  serial,
  first_name    varchar(100),
  middle_name   varchar(100),
  last_name   varchar(100),
  address1    varchar(100),
  address2    varchar(100),
  city    varchar(100),
  state   varchar(100),
  zip_code    varchar(100),
  home_phone    varchar(100),
  mobile_phone    varchar(100),
  email_address   varchar(100),
  gender    varchar(100),
  birth_date   date,
  member_level    varchar(100),
  member_since    date,
  membership_expires    date,
  reward_points   integer not null,
  can_post    boolean,
  admin_rights    boolean,
  opt_in    boolean,
  username    varchar(100),
  password_digest    varchar(100),
  created_at    timestamp,
  updated_at    timestamp,
  primary key	(id)
);

insert into members (first_name, middle_name, last_name, address1, address2, city, state, zip_code, home_phone, mobile_phone, email_address, gender, birth_date, age, age_group, member_level, member_since, membership_expires, reward_points, can_post, admin_rights, opt_in, username, password_digest, created_at, updated_at) values ('NEED TO FILL IN'); 



drop table if exists blog_forum_posts;

create table blog_forum_posts (
id    serial,
where_to_post 	varchar(100),
subject 	varchar(200),
date_posted 	timestamp,
content 	varchar(1000),
primary key	(id)
);

insert into blog_forum_posts (where_to_post, subject, date_posted, content) values ('NEED TO FILL IN');



drop table if exists blog_forum_posts_comments;

create table blog_forum_posts_comments (
id    serial,
blog_forum_post_id 	integer not null,
date_commented 	timestamp,
content 	varchar(1000),
primary key	(id)
);

insert into blog_forum_posts_comments (blog_forum_post_id, date_commented, content) values ('NEED TO FILL IN');



drop table if exists races;

create table races (
id    serial,
name 	varchar(100),
date 	date,
number_of_runners   integer not null,
number_in_gender    integer not null,
number_in_age_group    integer not null,
primary key	(id)
);

insert into races (name, date, number_of_runners, number_in_gender, number_in_age_group) values ('NEED TO FILL IN');



drop table if exists members_races;

create table members_races (
id    serial,
member_id   integer not null,
race_id   integer not null,
race_time 	interval,
race_distance   float,
placement_overall 	integer not null,
placement_in_gender	  integer not null,
placement_in_age_group 	integer not null,
primary key	(id)
);

insert into members_races (member_id, race_id, race_time, race_distance, placement_overall, placement_in_gender, placement_in_age_group) values ('NEED TO FILL IN');



drop table if exists events;

create table events (
id    serial,
name 	varchar(100),
date 	date,
primary key	(id)
);

insert into events (name, date) values ('NEED TO FILL IN');



drop table if exists rewards;

create table rewards (
id    serial,
member_id 	integer not null,
event_id    integer not null,
activity_description    varchar(500),
points    integer not null,
primary key	(id)
);

insert into rewards (member_id, event_id, activity_description, points) values ('NEED TO FILL IN');
