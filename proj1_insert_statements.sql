use dbproj1;

INSERT INTO `user` (`uname`, `uemail`, `upassword`, `ulongitude`, `ulatitude`, `ucurrenttime`, `ucurrentstate`) VALUES 
('ben', 'ben123@gmail.com', '123ben', '-73.986515 ', '40.694456', '2018-11-28 00:00:00', 'null'),
('andy', 'andy456@gmail.com', '456andy', '-73.986515', '40.694456', '2018-11-28 12:00:00', 'at work'),
('roy', 'roy789@gmail.com', '789roy', '-73.986515', '40.694456', '2018-11-28 15:00:00', 'null');

INSERT INTO `area` (`aname`, `alongitude`, `alatitude`, `aradius`) VALUES 
('NYU Tandon', '-73.986515', '40.694456', '100'),
('Time Square', '-73.984637', '40.759114', '200');

INSERT INTO `note` (`uid`, `aid`, `nradius`, `nstartday`, `nendday`, `nstarttime`, `nendtime`, `routine`, `privacy`, `ndescription`) VALUES 
('1', '2', '300', '2018-11-28', '2018-11-28', '00:00', '12:00', 'Monday', 'everyone', NULL),
('2', '1', '100', '2018-11-28', '2018-11-28', '09:00', '21:00', 'everyday', 'me', NULL),
('3', '2', '500', '2018-11-28', '2018-11-28', '12:00', '18:00', 'null', 'friend', NULL);

INSERT INTO `tag` (`tname`) VALUES 
('tourism'),
('shopping'),
('food'),
('transportation'),
('me');

INSERT INTO `notetag` (`nid`, `tid`) VALUES 
('1', '1'),
('1', '2'),
('1', '3'),
('2', '4'),
('2', '5'),
('3', '1'),
('3', '2');

INSERT INTO `friendship` (`uid1`, `uid2`) VALUES 
('1', '2'),
('2', '3');

INSERT INTO `filter` (`uid`, `tid`, `flongitude`, `flatitude`, `fstarttime`, `fendtime`, `fcurrentstate`) VALUES 
('1', '1', '-73.986515', '40.694456', '2018-11-28 06:00:00', '2018-11-28 18:00:00', 'null'),
('1', '4', '-73.986515', '40.694456', '2018-11-28 06:00:00', '2018-11-28 18:00:00', 'null'),
('2', '1', '-73.986515', '40.694456', '2018-11-28 06:00:00', '2018-11-28 18:00:00', 'null'),
('2', '3', '-73.986515', '40.694456', '2018-11-28 06:00:00', '2018-11-28 18:00:00', 'null'),
('3', '1', '-73.986515', '40.694456', '2018-11-28 06:00:00', '2018-11-28 18:00:00', 'null'),
('3', '3', '-73.986515', '40.694456', '2018-11-28 06:00:00', '2018-11-28 18:00:00', 'null'),
('3', '5', '-73.986515', '40.694456', '2018-11-28 06:00:00', '2018-11-28 18:00:00', 'null');