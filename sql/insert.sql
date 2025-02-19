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

INSERT INTO categories (name) VALUES ('CSS');

INSERT INTO questions (categoryName, content) VALUES ('CSS', 'Fyrir eftirfarandi HTML / for the following HTML:\n\n\n<div class="text">\n  <h1 class="important text__title">Halló heimur</p>\n</div>\n \n\nEr skilgreint CSS / there is defined CSS:\n\n\n.text {\n  font-size: 10px;\n  color: green;\n}\n\n.text .text__title {\n  font-size: 1.5em;\n}\n\n.important {\n  font-size: 2em;\n  color: red;\n}\n\n \n\nHvert af eftirfarandi er satt fyrir textann „Halló heimur“ eftir að búið er að reikna gildi?');
INSERT INTO questions (categoryName, content) VALUES ('CSS', 'Ef við erum að nota nýtt gildi fyrir lit í CSS sem er ekki víst að sé stutt í öllum vöfrum, þá ættum við að');
INSERT INTO questions (categoryName, content) VALUES ('CSS', 'Í verkefnum höfum við unnið með „containers“ og „items“ sem hugtök, hvað á það við?');
INSERT INTO questions (categoryName, content) VALUES ('CSS', 'Þegar við notum flexbox hvað af eftirfarandi er satt? Gerið ráð fyrir að skjal sé lesið frá vinstri til hægri.');

INSERT INTO answers (questionID, content, correct) VALUES (5, 'font-size: 20px;, color: green;', true);
INSERT INTO answers (questionID, content, correct) VALUES (5, 'font-size: 15px;, color: red;', false);
INSERT INTO answers (questionID, content, correct) VALUES (5, 'font-size: 20px;, color: red;', false);
INSERT INTO answers (questionID, content, correct) VALUES (5, 'font-size: 15px;, color: green;', false);
INSERT INTO answers (questionID, content, correct) VALUES (6, 'Skilgreina fallback gildi á undan nýja gildinu sem væri notað í stað þess ef það er ekki stutt', true);
INSERT INTO answers (questionID, content, correct) VALUES (6, 'Skilgreina fallback gildi á eftir nýja gildinu sem væri notað í stað þess ef það er ekki stutt.', false);
INSERT INTO answers (questionID, content, correct) VALUES (6, 'Setja upp JavaScript virkni sem bendir notanda á að sækja nýjann vafra sem styður gildið.', false);
INSERT INTO answers (questionID, content, correct) VALUES (6, 'Þetta er ekki stutt í CSS.', false);
INSERT INTO answers (questionID, content, correct) VALUES (7, '„Flex container“ og „flex items; „grid container“ og „grid items“: greinarmunur á foreldri og börnum þegar flexbox og CSS grid er notað.', true);
INSERT INTO answers (questionID, content, correct) VALUES (7, '„Flex container“ og „flex items: greinarmunur á foreldri og börnum eingngu þegar flexbox er notað.', false);
INSERT INTO answers (questionID, content, correct) VALUES (7, '„Grid container“ og „grid items“: greinarmunur á foreldri og börnum eingöngu þegar grid er notað.', false);
INSERT INTO answers (questionID, content, correct) VALUES (7, 'Hugtök sem eru notuð með `querySelectorAll`: „container“ er það element sem leitað er undir, „items“ það sem er skilað.', false);
INSERT INTO answers (questionID, content, correct) VALUES (8, 'Höfum skilgreinda tvo ása: aðalás og krossás sem eru hornréttir; sjálfgefin röðun er á aðalás frá vinstri til hægri.', true);
INSERT INTO answers (questionID, content, correct) VALUES (8, 'Höfum skilgreinda tvo ása: aðalás og krossás sem eru samsíða; sjálfgefin röðun er á aðalás frá vinstri til hægri.', false);
INSERT INTO answers (questionID, content, correct) VALUES (8, 'Höfum skilgreinda tvo ása: aðalás og krossás sem eru hornréttir; sjálfgefin röðun er á krossás frá vinstri til hægri.', false);
INSERT INTO answers (questionID, content, correct) VALUES (8, 'Höfum skilgreinda tvo ása: aðalás og krossás sem eru samsíða; sjálfgefin röðun er á krossás frá vinstri til hægri.', false);

INSERT INTO categories (name) VALUES ('JS');

INSERT INTO questions (categoryName, content) VALUES ('JS', 'Hvað er skrifað út eftir að eftirfarandi kóði er keyrður?\n\nconst items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];\n\nconst іtem = items\n  .map((i) => i * 2)\n  .filter(\n    (i) => i < 10\n  )\n  .find((i) => i > 6)\n\n\nconsole.log(item);');
INSERT INTO questions (categoryName, content) VALUES ('JS', 'Þegar við berum saman gildi í JavaScript ættum við alltaf að nota þrjú samasem merki (`===`) því að');
INSERT INTO questions (categoryName, content) VALUES ('JS', 'Þegar við notum `fetch` í JavaScript ætti ferlið við að sækja gögn að vera');

INSERT INTO answers (questionID, content, correct) VALUES (9, '8', true);
INSERT INTO answers (questionID, content, correct) VALUES (9, '[8]', false);
INSERT INTO answers (questionID, content, correct) VALUES (9, 'Uncaught ReferenceError: item is not defined', false);
INSERT INTO answers (questionID, content, correct) VALUES (9, 'undefined', false);
INSERT INTO answers (questionID, content, correct) VALUES (10, 'Þessi samanburður byrjar á að bera saman týpur gilda og kemst því framhjá type coercion sem gerist með samanburð með tveimur samasem merkjum.', true);
INSERT INTO answers (questionID, content, correct) VALUES (10, 'Við ættum alltaf að nota tvö samasem merki, ekki þrjú því þá byrjum við á að bera saman týpur gilda og komumst þannig framhjá type coercion.', false);
INSERT INTO answers (questionID, content, correct) VALUES (10, 'Þessi samanburður kemst framhjá truthy og falsy gildum og skilar eingöngu réttum niðurstöðum fyrir primitive gildi.', false);
INSERT INTO answers (questionID, content, correct) VALUES (10, 'Þessi samanburður nýtir lógíska virkja sem virka aðeins í tvístæðum.', false);
INSERT INTO answers (questionID, content, correct) VALUES (11, 'Búið til `fetch` request kall sem tilgreinir að minnsta kosti URL; villuathugun á kalli og svari með tilliti til HTTP; gögn sótt í response með villuathugun.', true);
INSERT INTO answers (questionID, content, correct) VALUES (11, 'Búið til `fetch` request kall sem verður að tilgreina URL, HTTP aðferð og stöðukóða; villuathugun á kalli og svari með tilliti til HTTP; gögn sótt í response með villuathugun.', false);
INSERT INTO answers (questionID, content, correct) VALUES (11, 'Búið til `fetch` request kall sem tilgreinir að minnsta kosti URL; villuathugun á kalli og svari með tilliti til URL; gögn sótt í response.', false);
INSERT INTO answers (questionID, content, correct) VALUES (11, 'Búið til `fetch` request kall sem tilgreinir að minnsta kosti URL; villuathugun á kalli og svari með tilliti til HTTP; eingöngu JSON gögn sótt í response með villuathugun.', false);