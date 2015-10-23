drop table genres;
create table genres (
  id serial4 primary key,
  name varchar(255) not null
);

drop table links;
create table links (
  id serial4 primary key,
  name varchar(255) not null,
  description text,
  category_id integer
);


insert into genres (name) values ('RUBY');
insert into genres (name) values ('CSS3');
insert into genres (name) values ('HTML5');

insert into links (name, description, category_id) values ('Ruby Docs', 'http://www.ruby-doc.org', 1);
insert into links (name, description, category_id) values ('CSS3 Info', 'http://www.css3.info', 2);
  insert into links (name, description, category_id) values ('W3 Scholls', 'http://www.w3schools.com/', 3);
