
insert into Userss (id,Role, email, firstname, lastname, password) values (1,1, 'hymer123@hotmail.com', 'Mathias','Witak','password');
insert into Userss (id,Role, email, firstname, lastname, password) values (2,1, 'e.halilovic@students.htl-leonding.ac.at', 'Ema','Halilovic','password');
insert into Userss (id,Role, email, firstname, lastname, password) values (3,2, 'c.aberger@htl-leonding.ac.at', 'Christian','Aberger','password');
insert into Userss (id,Role, email, firstname, lastname, password) values (4,2, 'h.hammer@htl-leonding.ac.at', 'Hans-Christian','Hammer','password');

insert into locations (id, info, latitude, longitude, name) values (1,'HTL Leonding Schulgebäude',48.268455462664114, 14.25179316922848,'HTBLA Leonding');
insert into locations(id, info, latitude, longitude, name) values (2,'Linz Hauptbahnhof ÖBB', 48.290629287777584, 14.291171849684583, 'HBF Linz');

insert into projectlocations (project_id, location_id) values (1,1);

insert into customer (id, email, firstname, lastname, tel) values (1, 'ceo@sony.at', 'Kenichiro', 'Yoshida','1234567');
insert into customer (id, email, firstname, lastname, tel) values (2,'office@htl-leonding.ac.at', null,null,'1223344');
insert into customer (id, email, firstname, lastname, tel) values (3,'info@linzag.at',null,null,'123123');

insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, user_id) values (1,48.268455462664114,14.25179316922848,current_timestamp,200,1);
insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, user_id) values (2,48.268455462664114,14.25179316922848,current_timestamp,5433,2);
insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, user_id) values (3,48.268455462664114,14.25179316922848,current_timestamp,444,1);

insert into projects (id,description,name,customer_id) values (1,'Website für HTL Leonding überarbeiten', 'HTL Leonding Webpage',2);
insert into projects (id,description,name,customer_id) values (2,'Sony TV Ad Kampagne schalten', 'Sony Ads',1);
insert into projects (id,description,name,customer_id) values (3,'Linz AG Straßenbahn Bildschirme austauschen', 'Linz AG Öffis',3);

insert into projectentries (entry_timerecid, project_id) values (1,1);
insert into projectentries (entry_timerecid, project_id) values (2,1);
insert into projectentries (entry_timerecid, project_id) values (3,1);

insert into userprojects (user_id, project_id) values (1,1);
insert into userprojects(user_id, project_id) values (1,2);
insert into userprojects(user_id, project_id) values (2,3);