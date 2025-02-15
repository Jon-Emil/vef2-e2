INSERT INTO categories (name) VALUES ('HTML');

INSERT INTO questions (categoryName, content) VALUES ('HTML', 'Ef við værum að smíða vefsíðu og myndum vilja geta farið frá index.html yfir á about.html, hvað væri best að nota?');
INSERT INTO questions (categoryName, content) VALUES ('HTML', 'Í <head> á vefjum setjum við <meta charset=\"utf-8\"> (eða það stafasett sem nota á), afhverju er það gert?');
INSERT INTO questions (categoryName, content) VALUES ('HTML', 'Það sem við getum gert til að forrita aðgengilega vefi er');
INSERT INTO questions (categoryName, content) VALUES ('HTML', 'Hvað er merkingarfræði í sambandi við námsefnið?');

INSERT INTO answers (questionID, content, correct) VALUES (1, '<a href=\"about.html\">About</a>', true);
INSERT INTO answers (questionID, content, correct) VALUES (1, '<form method=\"get\" action=\"about.html\"><button>About</button></form>', false);
INSERT INTO answers (questionID, content, correct) VALUES (1, '<button to=\"about.html\">About</button>', false);
INSERT INTO answers (questionID, content, correct) VALUES (1, 'Allar jafn góðar / All equally good', false);

INSERT INTO answers (questionID, content, correct) VALUES (2, 'Þannig að stafir birtist rétt.', true);
INSERT INTO answers (questionID, content, correct) VALUES (2, 'Skilgreining sem visual studio verður að hafa þannig að prettier virki rétt.', false);
INSERT INTO answers (questionID, content, correct) VALUES (2, 'Skilgreining sem aXe krefur okkur um til að vefur verði aðgengilegur.', false);
INSERT INTO answers (questionID, content, correct) VALUES (2, 'Ekkert af þessu.', false);

INSERT INTO answers (questionID, content, correct) VALUES (3, 'Allt af þessu.', true);
INSERT INTO answers (questionID, content, correct) VALUES (3, 'Nota eingöngu lyklaborð við að skoða og nota vefinn.', false);
INSERT INTO answers (questionID, content, correct) VALUES (3, 'Merkja form á aðgengilegan hátt.', false);
INSERT INTO answers (questionID, content, correct) VALUES (3, 'Hafa tóman alt texta á myndum ef þær eru eingöngu til skrauts.', false);

INSERT INTO answers (questionID, content, correct) VALUES (4, 'Hvert HTML element hefur einhverja skilgreinda merkingu—merkingarfræðilegt gildi—sem við þurfum að hafa í huga þegar við smíðum vefi.', true);
INSERT INTO answers (questionID, content, correct) VALUES (4, 'Hvert HTML tag hefur einhverja skilgreinda merkingu—merkingarfræðilegt gildi—sem við þurfum að hafa í huga þegar við smíðum vefi.', false);
INSERT INTO answers (questionID, content, correct) VALUES (4, 'Hvert CSS eigindi hefur einhverja skilgreinda merkingu—merkingarfræðilegt gildi—sem við þurfum að hafa í huga þegar við smíðum vefi.', false);
INSERT INTO answers (questionID, content, correct) VALUES (4, 'Hver CSS selector hefur einhverja skilgreinda merkingu—merkingarfræðilegt gildi—sem við þurfum að hafa í huga þegar við smíðum vefi.', false);






