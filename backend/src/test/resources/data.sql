USE
`oilpocket_db`;

drop table if exists `user_gas_record`;
drop table if exists `users`;
drop table if exists `gas_detail`;
drop table if exists `gas_station`;


CREATE TABLE users
(
    user_no  BIGINT       NOT NULL AUTO_INCREMENT,
    id       VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    gender   VARCHAR(255) NOT NULL,
    age      VARCHAR(255) NOT NULL,
    PRIMARY KEY (user_no)
);




create table gas_station
(
    station_no bigint       not null auto_increment primary key,
    area       varchar(255) not null,
    name       varchar(255) not null,
    address    varchar(255) not null,
    brand      varchar(255) not null,
    is_self    boolean      not null
);

create table gas_detail
(
    detail_no    bigint primary key auto_increment,
    station_no   bigint       not null,
    gas_type     varchar(255) not null,
    price        integer      not null,
    created_date date         not null,
    foreign key (station_no) references gas_station (station_no)
);


CREATE TABLE user_gas_record (
  user_gas_record_no BIGINT NOT NULL AUTO_INCREMENT,
  user_no BIGINT NOT NULL,
  gas_station_no BIGINT NOT NULL,
  charge_date DATE NOT NULL,
  refueling_price BIGINT NOT NULL,
  saving_price BIGINT NOT NULL,
  record_gas_type varchar(255) NOT NULL,
  record_gas_amount BIGINT NOT NULL,
  PRIMARY KEY (user_gas_record_no),
  FOREIGN KEY (user_no) REFERENCES users(user_no),
  FOREIGN KEY (gas_station_no) REFERENCES gas_station(station_no)
);

insert into gas_station(area, name, address, brand, is_self)
values ("서울 종로구", "㈜지에스이앤알 평창주유소", "평창문화로 135", "현대오일뱅크", true);

insert into gas_detail (station_no, gas_type, price, created_date)
values (1, "PREMIUM_GASOLINE", 1899, now());
insert into gas_detail (station_no, gas_type, price, created_date)
values (1, "GASOLINE", 1659, now());
insert into gas_detail (station_no, gas_type, price, created_date)
values (1, "DIESEL", 1759, now());

-- 한달 정보 조회를 위한 더미데이터
insert into gas_detail (station_no, gas_type, price, created_date)
values (1, "PREMIUM_GASOLINE", 1899, DATE_ADD(now(), interval -1 month));
insert into gas_detail (station_no, gas_type, price, created_date)
values (1, "GASOLINE", 1659, DATE_ADD(now(), interval -1 month));
insert into gas_detail (station_no, gas_type, price, created_date)
values (1, "DIESEL", 1759, DATE_ADD(now(), interval -1 month));
insert into gas_detail (station_no, gas_type, price, created_date)
values (1, "PREMIUM_GASOLINE", 1899, '2023-02-01');
insert into gas_detail (station_no, gas_type, price, created_date)
values (1, "GASOLINE", 1659, '2023-02-01');
insert into gas_detail (station_no, gas_type, price, created_date)
values (1, "DIESEL", 1759, '2023-02-01');
insert into gas_detail (station_no, gas_type, price, created_date)
values (1, "PREMIUM_GASOLINE", 1899, '2023-01-02');
insert into gas_detail (station_no, gas_type, price, created_date)
values (1, "GASOLINE", 1659, '2023-01-02');
insert into gas_detail (station_no, gas_type, price, created_date)
values (1, "DIESEL", 1759, '2023-01-02');

insert into users(id, password, gender, age) values ("admin", "password", "MALE", "FORTHY");
insert into user_gas_record(user_no, gas_station_no, charge_date, refueling_price, saving_price, record_gas_type, record_gas_amount)
values (1, 1, "2023-02-12", 23000, 376, "DIESEL", 14);
insert into user_gas_record(user_no, gas_station_no, charge_date, refueling_price, saving_price, record_gas_type, record_gas_amount)
values (1, 1, "2023-02-12", 23000, 390, "DIESEL", 14);