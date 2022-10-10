
insert into Userss (id,Role, email, firstname, lastname, password) values (1,1, 'hymer123@hotmail.com', 'Mathias','Witak','password');
insert into Userss (id,Role, email, firstname, lastname, password) values (2,1, 'e.halilovic@students.htl-leonding.ac.at', 'Ema','Halilovic','password');
insert into Userss (id,Role, email, firstname, lastname, password) values (3,2, 'c.aberger@htl-leonding.ac.at', 'Christian','Aberger','password');
insert into Userss (id,Role, email, firstname, lastname, password) values (4,2, 'h.hammer@htl-leonding.ac.at', 'Hans-Christian','Hammer','password');

insert into projects (id,description,name) values (1,'Website für HTL Leonding überarbeiten', 'HTL Leonding Webpage');
insert into projects (id,description,name) values (2,'Sony TV Ad Kampagne schalten', 'Sony Ads');
insert into projects (id,description,name) values (3,'Linz AG Straßenbahn Bildschirme austauschen', 'Linz AG Öffis');

insert into locations (id, info, latitude, longitude, name) values (1,'HTL Leonding Schulgebäude',48.268455462664114, 14.25179316922848,'HTBLA Leonding');

insert into projectlocations (project_id, location_id) values (1,1);

insert into customer (id, email, firstname, lastname, tel) values (1, 'ceo@sony.at', 'Kenichiro', 'Yoshida','1234567');

insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, user_id) values (1,44,2,current_timestamp,200,1);

insert into projectentries (entry_timerecid, project_id) values (1,1);