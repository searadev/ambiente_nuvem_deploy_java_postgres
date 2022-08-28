DROP TABLE IF EXISTS tb_message;
create table tb_role (id bigserial not null, authority varchar(255), primary key (id));
create table tb_user (id bigserial not null, first_name varchar(255), last_name varchar(255), email varchar(255), password varchar(255), primary key (id));
create table tb_user_role (user_id int8 not null, role_id int8 not null, primary key (user_id, role_id));
create table tb_medium (id bigserial not null, full_name varchar(255), primary key (id));
create table tb_module (id bigserial not null, name varchar(255), primary key (id));
create table tb_class (id bigserial not null, title varchar(255), url varchar(255), date date, created_at TIMESTAMP WITHOUT TIME ZONE, updated_at TIMESTAMP WITHOUT TIME ZONE, module_id int8 not null, medium_id int8 not null, user_id int8 not null, primary key (id));
create table tb_lecture (id bigserial not null, title varchar(255), url varchar(255), date date, created_at TIMESTAMP WITHOUT TIME ZONE, updated_at TIMESTAMP WITHOUT TIME ZONE, medium_id int8 not null, user_id int8 not null, primary key (id));
create table tb_message (id bigserial not null, full_name varchar(255), text text, date date, created_at TIMESTAMP WITHOUT TIME ZONE, updated_at TIMESTAMP WITHOUT TIME ZONE, medium_id int8 not null, user_id int8 not null, status boolean not null, primary key (id));
create table tb_psychography (id bigserial not null, full_name varchar(255), text text, date date, created_at TIMESTAMP WITHOUT TIME ZONE, updated_at TIMESTAMP WITHOUT TIME ZONE, medium_id int8 not null, user_id int8 not null, status boolean not null, primary key (id));
alter table tb_user add constraint UK_4vih17mube9j7cqyjlfbcrk4m unique (email);
alter table tb_user_role add constraint FKea2ootw6b6bb0xt3ptl28bymv foreign key (role_id) references tb_role;
alter table tb_user_role add constraint FK7vn3h53d0tqdimm8cp45gc0kl foreign key (user_id) references tb_user;

--Dar permissão para o usuário
postgres=# Grant postgres to searausr;

