INSERT INTO users
(id, dow, is_active, alarm_time, notification_time, should_notify)

VALUES
('12345678901234567890123', 1, true,  '08:00:00', '20:00:00', true ),
('12abasd2398hkkdn1093als', 2, false, '18:30:00', '20:00:00', false),
('c3ep9823hncsldiuch2lwd1', 3, true,  '10:01:00', '18:00:00', false),
('m2i1ludnd1oooqoooqq0199', 4, true,  '21:00:00', '10:00:00', true ),
('2l9ui12nd12incsaclkjsnf', 5, false, '06:00:00', '21:00:00', false),
('clisujbn1209cnw9i2i3nca', 6, false, '60:00:00', '20:00:00', true ),
('cmcwiej019jcnjn01jonooo', 7, true,  '68:00:00', '20:00:00', true ),
('2ou3icnlwjncaljsnalslll', 8, false, '08:00:00', '00:00:00', false),
('cxaliueecjn23p0cnlsjnkj', 0, true,  '21:00:00', '08:00:00', true ),
('2928cnweliijcnscisaulal', 1, false, '08:00:00', '20:00:00', true );

INSERT INTO words
(user_id, word)

VALUES
('12345678901234567890123', 'ok'),
('12345678901234567890123', 'could be better!'),
('12abasd2398hkkdn1093als', 'all is good'),
('12abasd2398hkkdn1093als', 'aaaaaaaaaaaaaaaaa'),
('c3ep9823hncsldiuch2lwd1', 'empty'),
('c3ep9823hncsldiuch2lwd1', ''),
('m2i1ludnd1oooqoooqq0199', 'bad'),
('m2i1ludnd1oooqoooqq0199', 'sad'),
('2l9ui12nd12incsaclkjsnf', 'yeah'),
('2l9ui12nd12incsaclkjsnf', 'ok'),
('clisujbn1209cnw9i2i3nca', 'ok'),
('clisujbn1209cnw9i2i3nca', 'ok'),
('cmcwiej019jcnjn01jonooo', ''),
('cmcwiej019jcnjn01jonooo', ''),
('2ou3icnlwjncaljsnalslll', 'what'),
('2ou3icnlwjncaljsnalslll', 'happy'),
('cxaliueecjn23p0cnlsjnkj', 'excited'),
('cxaliueecjn23p0cnlsjnkj', 'eggcited'),
('2928cnweliijcnscisaulal', 'this'),
('2928cnweliijcnscisaulal', 'that');
