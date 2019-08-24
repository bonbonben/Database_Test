drop schema dbproj1;
create schema dbproj1;
use dbproj1;
create table User (uid integer auto_increment primary key,
					uname varchar(50),
					uemail varchar(50),
                    upassword varchar(50),
					ulongitude float(10,6),
					ulatitude float(10,6),
					ucurrenttime datetime,
					ucurrentstate varchar(50)
                    );
create table Tag (tid integer auto_increment primary key,
					tname varchar(50)
					);
create table Filter (fid integer auto_increment primary key,
					uid integer,
					tid integer,
					flongitude float(10,6),
					flatitude float(10,6),
					fstarttime datetime,
					fendtime datetime,
					fcurrentstate varchar(50),
					FOREIGN KEY (uid) REFERENCES User(uid) ON DELETE CASCADE,
					FOREIGN KEY (tid) REFERENCES Tag(tid) ON DELETE CASCADE
                    );
create table Friendship (uid1 integer,
						uid2 integer,
						FOREIGN KEY (uid1) REFERENCES User(uid) ON DELETE CASCADE,
						FOREIGN KEY (uid2) REFERENCES User(uid) ON DELETE CASCADE
						);
create table Area (aid integer auto_increment primary key,
					aname varchar(50),
					alongitude float(10,6),
					alatitude float(10,6),
					aradius integer
					);
create table Note (nid integer auto_increment primary key,
					uid integer,
					aid integer,
					nradius integer,
					nstartday date,
					nendday date,
					nstarttime time,
					nendtime time,
					routine varchar(50),
					privacy varchar(50),
					ndescription varchar(200),
					FOREIGN KEY (uid) REFERENCES User(uid) ON DELETE CASCADE,
					FOREIGN KEY (aid) REFERENCES Area(aid) ON DELETE CASCADE
					);						
create table Comment (nid integer,
					uid integer,
					cdescription varchar(200),
					FOREIGN KEY (nid) REFERENCES Note(nid) ON DELETE CASCADE,
					FOREIGN KEY (uid) REFERENCES User(uid) ON DELETE CASCADE
					);
create table Notetag (nid integer,
					tid integer,
					FOREIGN KEY (nid) REFERENCES Note(nid) ON DELETE CASCADE,
					FOREIGN KEY (tid) REFERENCES Tag(tid) ON DELETE CASCADE
					);
create table Deal (did integer auto_increment primary key,
					uid integer,
					dstarttime datetime,
					dendtime datetime,
					ddescription varchar(200),
					FOREIGN KEY (uid) REFERENCES User(uid) ON DELETE CASCADE
					);
create table Apply (nid integer,
					did integer,
					FOREIGN KEY (nid) REFERENCES Note(nid) ON DELETE CASCADE,
					FOREIGN KEY (did) REFERENCES Deal(did) ON DELETE CASCADE
					);