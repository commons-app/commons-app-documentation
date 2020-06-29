CREATE TABLE leaderboard_user(
  username varbinary(255) not null unique key,
  user_id int(5) unsigned not null auto_increment primary key,
  user_avatar varchar(255) not null
);


CREATE TABLE leaderboard_upload(
  user_id int(5) unsigned not null,
  `weekly` bigint unsigned not null,
  `yearly` bigint unsigned not null,
  `all_time` bigint unsigned not null,
  foreign key (user_id) references leaderboard_user(user_id)
);


CREATE TABLE leaderboard_nearby(
  user_id int(5) unsigned not null,
  `weekly` bigint unsigned not null,
  `yearly` bigint unsigned not null,
  `all_time` bigint unsigned not null,
  foreign key (user_id) references leaderboard_user(user_id)
);

CREATE TABLE leaderboard_used(
  user_id int(5) unsigned not null,
  `weekly` bigint unsigned not null,
  `yearly` bigint unsigned not null,
  `all_time` bigint unsigned not null,
  foreign key (user_id) references leaderboard_user(user_id)
);
