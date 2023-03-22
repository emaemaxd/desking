insert into Userss (id,Role, email, firstname, lastname, password) values (1,1, 'hymer123@hotmail.com', 'Mathias','Witak','password');
insert into Userss (id,Role, email, firstname, lastname, password) values (2,1, 'e.halilovic@students.htl-leonding.ac.at', 'Ema','Halilovic','password');
insert into Userss (id,Role, email, firstname, lastname, password) values (3,2, 'c.aberger@htl-leonding.ac.at', 'Christian','Aberger','password');
insert into Userss (id,Role, email, firstname, lastname, password) values (4,2, 'h.hammer@htl-leonding.ac.at', 'Hans-Christian','Hammer','password');

insert into locations (id, info, latitude, longitude, name) values (-1, 'HTL Leonding Schulgebäude',48.268455462664114, 14.25179316922848,'HTBLA Leonding');
insert into locations(id, info, latitude, longitude, name) values (-2, 'Linz Hauptbahnhof ÖBB', 48.290629287777584, 14.291171849684583, 'HBF Linz');

insert into customer (id, email, firstname, lastname, tel) values (1, 'ceo@sony.at', 'Kenichiro', 'Yoshida','1234567');
insert into customer (id, email, firstname, lastname, tel) values (2,'office@htl-leonding.ac.at', null,null,'1223344');
insert into customer (id, email, firstname, lastname, tel) values (3,'info@linzag.at',null,null,'123123');

insert into projects (id,description,name,customer_id) values (1,'Website für HTL Leonding überarbeiten', 'HTL Leonding Webpage',2);
insert into projects (id,description,name,customer_id) values (2,'Sony TV Ad Kampagne schalten', 'Sony Ads',1);
insert into projects (id,description,name,customer_id) values (3,'Linz AG Straßenbahn Bildschirme austauschen', 'Linz AG Oeffis',3);
insert into projects (id,description,name,customer_id) values (4,'Desking - Zeiterfassungstool leicht gemacht', 'Desking',2);

insert into projectlocations (project_id, location_id) values (1,-1);

insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, projectid_id, user_id) values (1,48.268455462664114,14.25179316922848,(TIMESTAMP '2022-05-10 12:00:00+02:00'),200,1,1);
insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, projectid_id, user_id) values (2,48.268455462664114,14.25179316922848,(TIMESTAMP '2022-05-10 12:00:00+02:00'),5433,1,2);
insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, projectid_id, user_id) values (3,48.268455462664114,14.25179316922848,(TIMESTAMP '2022-05-10 12:00:00+02:00'),444,2,1);
insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, projectid_id, user_id) values (4,48.268455462664114,14.25179316922848,(TIMESTAMP '2022-05-10 12:00:00+02:00'),86400000,3,1);
insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, projectid_id, user_id) values (5,48.268455462664114,14.25179316922848,(TIMESTAMP '2022-05-10 12:00:00+02:00'),90000000,1,2);
insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, projectid_id, user_id) values (6,48.268455462664114,14.25179316922848, (TIMESTAMP '2022-11-28 12:30:00+02:00'), 10700, 4, 1);
insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, projectid_id, user_id) values (7,48.268455462664114,14.25179316922848, (TIMESTAMP '2022-11-21 11:50:00+02:00'),7200, 4, 1);
insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, projectid_id, user_id) values (8,48.268455462664114,14.25179316922848, (TIMESTAMP '2022-11-22 08:00:00+02:00'),7200, 4, 1);
insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, projectid_id, user_id) values (9,48.268455462664114,14.25179316922848, (TIMESTAMP '2022-11-07 11:50:00+02:00'),8200, 4, 1);
insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, projectid_id, user_id) values (10,48.268455462664114,14.25179316922848, (TIMESTAMP '2022-11-08 08:00:00+02:00'),8245, 4, 1);
insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, projectid_id, user_id) values (11,48.268455462664114,14.25179316922848, (TIMESTAMP '2022-11-12 12:50:00+02:00'),7200, 4, 1);
insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, projectid_id, user_id) values (12,48.268455462664114,14.25179316922848, (TIMESTAMP '2022-11-20 11:50:00+02:00'),14400, 4, 1);
insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, projectid_id, user_id) values (13,48.268455462664114,14.25179316922848, (TIMESTAMP '2022-11-19 16:30:00+02:00'),9400, 4, 1);
insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, projectid_id, user_id) values (14,48.268455462664114,14.25179316922848, (TIMESTAMP '2022-11-27 14:30:00+02:00'),8750, 4, 1);
insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, projectid_id, user_id) values (15,48.268455462664114,14.25179316922848, (TIMESTAMP '2023-02-03 14:30:00+02:00'),8750, 4, 1);


insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, projectid_id, user_id) values (15,48.268455462664114,14.25179316922848, (TIMESTAMP '2022-11-28 12:30:00+02:00'), 10700, 4, 2);
insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, projectid_id, user_id) values (16,48.268455462664114,14.25179316922848, (TIMESTAMP '2022-11-21 11:50:00+02:00'),7200, 4, 2);
insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, projectid_id, user_id) values (17,48.268455462664114,14.25179316922848, (TIMESTAMP '2022-11-22 08:00:00+02:00'),7200, 4, 2);
insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, projectid_id, user_id) values (18,48.268455462664114,14.25179316922848, (TIMESTAMP '2022-11-07 11:50:00+02:00'),8200, 4, 2);
insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, projectid_id, user_id) values (19,48.268455462664114,14.25179316922848, (TIMESTAMP '2022-11-08 08:00:00+02:00'),8245, 4, 2);
insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, projectid_id, user_id) values (20,48.268455462664114,14.25179316922848, (TIMESTAMP '2022-11-12 12:50:00+02:00'),7200, 4, 2);
insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, projectid_id, user_id) values (21,48.268455462664114,14.25179316922848, (TIMESTAMP '2022-11-20 11:50:00+02:00'),14400, 4, 2);
insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, projectid_id, user_id) values (22,48.268455462664114,14.25179316922848, (TIMESTAMP '2022-11-19 16:30:00+02:00'),9400, 4, 2);
insert into timerecording (timerecid, latitude, longitude, starttime, timepassed, projectid_id, user_id) values (23,48.268455462664114,14.25179316922848, (TIMESTAMP '2022-11-27 14:30:00+02:00'),8750, 4, 2);

insert into projectentries (entry_timerecid, project_id) values (1,1);
insert into projectentries (entry_timerecid, project_id) values (2,1);
insert into projectentries (entry_timerecid, project_id) values (3,1);
insert into projectentries (entry_timerecid, project_id) values (4,4);
insert into projectentries (entry_timerecid, project_id) values (5,4);
insert into projectentries (entry_timerecid, project_id) values (6,4);
insert into projectentries (entry_timerecid, project_id) values (7,4);
insert into projectentries (entry_timerecid, project_id) values (8,4);
insert into projectentries (entry_timerecid, project_id) values (9,4);
insert into projectentries (entry_timerecid, project_id) values (10,4);
insert into projectentries (entry_timerecid, project_id) values (11,4);
insert into projectentries (entry_timerecid, project_id) values (12,4);
insert into projectentries (entry_timerecid, project_id) values (13,4);
insert into projectentries (entry_timerecid, project_id) values (14,4);


insert into projectentries (entry_timerecid, project_id) values (15,4);
insert into projectentries (entry_timerecid, project_id) values (16,4);
insert into projectentries (entry_timerecid, project_id) values (17,4);
insert into projectentries (entry_timerecid, project_id) values (18,4);
insert into projectentries (entry_timerecid, project_id) values (19,4);
insert into projectentries (entry_timerecid, project_id) values (20,4);
insert into projectentries (entry_timerecid, project_id) values (21,4);
insert into projectentries (entry_timerecid, project_id) values (22,4);
insert into projectentries (entry_timerecid, project_id) values (23,4);

insert into userprojects (user_id, project_id) values (1,1);
insert into userprojects(user_id, project_id) values (1,2);
insert into userprojects(user_id, project_id) values (2,3);
insert into userprojects(user_id, project_id) values (1,4);
insert into userprojects(user_id, project_id) values (2,4);