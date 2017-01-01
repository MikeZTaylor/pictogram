BEGIN TRANSACTION;
CREATE TABLE "votes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "votable_type" varchar, "votable_id" integer, "voter_type" varchar, "voter_id" integer, "vote_flag" boolean, "vote_scope" varchar, "vote_weight" integer, "created_at" datetime, "updated_at" datetime);
INSERT INTO `votes` VALUES (2,'Post',6,'User',1,'t',NULL,1,'2016-12-29 15:09:07.625319','2016-12-29 15:09:07.625319');
INSERT INTO `votes` VALUES (3,'Post',8,'User',1,'t',NULL,1,'2016-12-29 15:40:37.042279','2016-12-29 15:40:37.042279');
INSERT INTO `votes` VALUES (4,'Post',13,'User',1,'t',NULL,1,'2016-12-29 18:24:43.064347','2016-12-29 18:24:43.064347');
INSERT INTO `votes` VALUES (5,'Post',13,'User',2,'t',NULL,1,'2016-12-29 20:46:46.795667','2016-12-29 20:46:46.795667');
INSERT INTO `votes` VALUES (6,'Post',12,'User',1,'t',NULL,1,'2016-12-29 21:09:56.394229','2016-12-29 21:09:56.394229');
INSERT INTO `votes` VALUES (7,'Post',12,'User',2,'t',NULL,1,'2016-12-29 21:33:35.175263','2016-12-29 21:33:35.175263');
INSERT INTO `votes` VALUES (8,'Post',14,'User',1,'t',NULL,1,'2016-12-30 10:53:37.928121','2016-12-30 10:53:37.928121');
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar DEFAULT '' NOT NULL, "encrypted_password" varchar DEFAULT '' NOT NULL, "reset_password_token" varchar, "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0 NOT NULL, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar, "last_sign_in_ip" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "user_name" varchar, "avatar_file_name" varchar, "avatar_content_type" varchar, "avatar_file_size" integer, "avatar_updated_at" datetime, "bio" text);
INSERT INTO `users` VALUES (1,'20064376@mail.wit.ie','$2a$11$cYoW9DDv1CNKAcXprFh4g.eVsoxmDJRF3c/E4JFVwmsKPv7eFgGhy',NULL,NULL,NULL,14,'2017-01-01 14:47:08.981861','2016-12-30 11:37:03.498863','::1','::1','2016-12-27 15:10:20.631673','2017-01-01 14:47:08.983075','Bomshika',NULL,NULL,NULL,NULL,'Hey there, I''m just doing some simple tests!!!!');
INSERT INTO `users` VALUES (2,'michaelzanetaylor@gmail.com','$2a$11$WhWvM2iAH5/79yIPBkwrq.jBfCS9AxRIZxDpOAM3zwq6z0gE8HFs.',NULL,NULL,NULL,4,'2016-12-29 21:33:30.598720','2016-12-29 20:46:36.284471','::1','::1','2016-12-27 17:38:41.908174','2016-12-29 21:33:30.599727','TestAccount',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `users` VALUES (3,'testing@gmail.com','$2a$11$y3E0yNfKGmyYMS9fDzAJAOkwHw7Dj2h0iu91cu.G81hb4SGfahMQy',NULL,NULL,NULL,1,'2016-12-29 21:25:52.802090','2016-12-29 21:25:52.802090','::1','::1','2016-12-29 21:25:52.797810','2016-12-29 21:25:52.802650','anotherUser',NULL,NULL,NULL,NULL,NULL);
CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
INSERT INTO `schema_migrations` VALUES ('20161226134338');
INSERT INTO `schema_migrations` VALUES ('20161226135025');
INSERT INTO `schema_migrations` VALUES ('20161227145234');
INSERT INTO `schema_migrations` VALUES ('20161227145826');
INSERT INTO `schema_migrations` VALUES ('20161227172227');
INSERT INTO `schema_migrations` VALUES ('20161227194237');
INSERT INTO `schema_migrations` VALUES ('20161229122730');
INSERT INTO `schema_migrations` VALUES ('20161229122930');
INSERT INTO `schema_migrations` VALUES ('20161229145202');
INSERT INTO `schema_migrations` VALUES ('20170101142920');
CREATE TABLE "posts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "caption" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "image_file_name" varchar, "image_content_type" varchar, "image_file_size" integer, "image_updated_at" datetime, "user_id" integer);
INSERT INTO `posts` VALUES (5,'Apple Event','2016-12-27 17:30:45.327051','2016-12-27 17:30:45.327051','lQJJNsD.png','image/png',304796,'2016-12-27 17:30:44.882406',1);
INSERT INTO `posts` VALUES (6,'Lana','2016-12-27 17:41:13.393579','2016-12-27 17:41:13.393579','photo-1452716726610-30ed68426a6b.jpeg','image/jpeg',114753,'2016-12-27 17:41:12.978546',2);
INSERT INTO `posts` VALUES (7,'creepy game','2016-12-28 13:15:03.895479','2016-12-29 15:10:34.329499','YlGUjjv.png','image/png',1699187,'2016-12-28 13:15:03.217056',1);
INSERT INTO `posts` VALUES (8,'pate or giblitsfff','2016-12-28 13:51:58.309139','2016-12-29 17:58:43.500998','mosse_1.jpg','image/jpeg',2259349,'2016-12-29 17:49:04.350449',1);
INSERT INTO `posts` VALUES (10,'apple event','2016-12-29 18:16:11.865965','2016-12-29 18:16:11.865965','lQJJNsD.png','image/png',304796,'2016-12-29 18:16:11.230143',1);
INSERT INTO `posts` VALUES (12,'apple event','2016-12-29 18:18:13.336256','2016-12-29 18:18:13.336256','lQJJNsD.png','image/png',304796,'2016-12-29 18:18:12.965179',1);
INSERT INTO `posts` VALUES (13,'Myanmar','2016-12-29 18:20:42.664831','2016-12-29 18:22:05.702946','RJASDrI.jpg','image/jpeg',3370818,'2016-12-29 18:20:41.760559',1);
INSERT INTO `posts` VALUES (14,'Drag ','2016-12-29 21:42:04.895614','2016-12-29 21:42:04.895614','25t37yl9btsx.jpg','image/jpeg',52946,'2016-12-29 21:42:04.752490',2);
CREATE TABLE "notifications" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer, "notified_by_id" integer, "post_id" integer, "identifier" integer, "notice_type" varchar, "read" boolean DEFAULT 'f', "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO `notifications` VALUES (1,2,1,6,40,'comment','f','2017-01-01 14:53:19.065732','2017-01-01 14:53:19.065732');
INSERT INTO `notifications` VALUES (2,2,1,6,41,'comment','f','2017-01-01 14:53:53.268334','2017-01-01 14:53:53.268334');
CREATE TABLE "comments" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer, "post_id" integer, "content" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO `comments` VALUES (3,1,6,'nice shot','2016-12-28 11:07:03.260138','2016-12-28 11:07:03.260138');
INSERT INTO `comments` VALUES (25,1,6,'so pretty','2016-12-29 15:09:11.519090','2016-12-29 15:09:11.519090');
INSERT INTO `comments` VALUES (30,1,13,'So Pretty','2016-12-29 20:45:53.412298','2016-12-29 20:45:53.412298');
INSERT INTO `comments` VALUES (31,2,13,'I would love to go there','2016-12-29 20:46:48.797101','2016-12-29 20:46:48.797101');
INSERT INTO `comments` VALUES (32,1,12,'I''m a comment','2016-12-29 21:10:00.003010','2016-12-29 21:10:00.003010');
INSERT INTO `comments` VALUES (33,1,14,'love','2016-12-30 11:11:21.504843','2016-12-30 11:11:21.504843');
INSERT INTO `comments` VALUES (34,1,14,'was so good in snatch game','2016-12-30 11:11:49.019569','2016-12-30 11:11:49.019569');
INSERT INTO `comments` VALUES (35,1,14,'the real winner','2016-12-30 11:11:58.300333','2016-12-30 11:11:58.300333');
INSERT INTO `comments` VALUES (36,1,14,'winners all stars?','2016-12-30 11:12:06.965909','2016-12-30 11:12:06.965909');
INSERT INTO `comments` VALUES (37,1,14,'winners all stars?','2016-12-30 11:12:10.259945','2016-12-30 11:12:10.259945');
INSERT INTO `comments` VALUES (38,1,6,'Do you know where this is? ','2017-01-01 14:47:40.512770','2017-01-01 14:47:40.512770');
INSERT INTO `comments` VALUES (41,1,6,'What camera did you use?','2017-01-01 14:53:53.263922','2017-01-01 14:53:53.263922');
CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2016-12-26 13:44:42.916464','2016-12-26 13:44:42.916464');
CREATE INDEX "index_votes_on_voter_id_and_voter_type_and_vote_scope" ON "votes" ("voter_id", "voter_type", "vote_scope");
CREATE INDEX "index_votes_on_votable_id_and_votable_type_and_vote_scope" ON "votes" ("votable_id", "votable_type", "vote_scope");
CREATE UNIQUE INDEX "index_users_on_user_name" ON "users" ("user_name");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE INDEX "index_posts_on_user_id" ON "posts" ("user_id");
CREATE INDEX "index_notifications_on_user_id" ON "notifications" ("user_id");
CREATE INDEX "index_notifications_on_post_id" ON "notifications" ("post_id");
CREATE INDEX "index_notifications_on_notified_by_id" ON "notifications" ("notified_by_id");
CREATE INDEX "index_comments_on_user_id" ON "comments" ("user_id");
CREATE INDEX "index_comments_on_post_id" ON "comments" ("post_id");
COMMIT;
