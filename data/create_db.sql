BEGIN ;

DROP TABLE IF EXISTS "soccer_clubs", "players","championship";


CREATE TABLE "championship"(
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" VARCHAR(255) NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMPTZ
);

CREATE TABLE "soccer_clubs" (
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" VARCHAR(255) NOT NULL,
    "date_of_creation" DATE NOT NULL,
    "country" VARCHAR(255) NOT NULL,
    "championship_id" INTEGER NOT NULL REFERENCES championship ("id")  ON DELETE CASCADE,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMPTZ
   
);


CREATE TABLE "players" (
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" VARCHAR(255) NOT NULL,
    "age" VARCHAR(255) NOT NULL,
    "position" VARCHAR(255) NOT NULL,
    "nationality" VARCHAR(255) NOT NULL,
    "description" TEXT NOT NULL,
    "club_id" INTEGER NOT NULL REFERENCES soccer_clubs ("id"),
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMPTZ
    
);

-- Insertion dans la table championnat
INSERT INTO championship ("name") VALUES
('Ligue 1'),
('Premier League'),
('La Liga'),
('Bundesliga'),
('Serie A');

-- Insertion dans la table soccer_clubs
INSERT INTO soccer_clubs ("name", "date_of_creation", "country", "championship_id") VALUES
('Paris Saint-Germain', '1970-08-12', 'France', 1),
('Manchester United', '1878-04-05', 'England', 2),
('Real Madrid', '1902-03-06', 'Spain', 3),
('Bayern Munich', '1900-02-27', 'Germany', 4),
('Juventus', '1897-11-01', 'Italy', 5);

-- Insertion dans la table players (exemple pour 3 clubs avec 5 joueurs chacun)
-- Club 1 : Paris Saint-Germain
INSERT INTO players ("name", "age", "position", "nationality", "description", "club_id") VALUES
('Kylian Mbappé', '23', 'Forward', 'French', 'Talented young striker', 1),
('Neymar Jr.', '30', 'Forward', 'Brazilian', 'Creative playmaker', 1),
('Marco Verratti', '29', 'Midfielder', 'Italian', 'Skillful midfielder', 1),
('Achraf Hakimi', '23', 'Defender', 'Moroccan', 'Versatile full-back', 1),
('Keylor Navas', '35', 'Goalkeeper', 'Costa Rican', 'Experienced goalkeeper', 1);

-- Club 2 : Manchester United
INSERT INTO players ("name", "age", "position", "nationality", "description", "club_id") VALUES
('Cristiano Ronaldo', '37', 'Forward', 'Portuguese', 'Legendary goal scorer', 2),
('Bruno Fernandes', '27', 'Midfielder', 'Portuguese', 'Playmaking maestro', 2),
('Harry Maguire', '28', 'Defender', 'English', 'Solid central defender', 2),
('Jadon Sancho', '21', 'Forward', 'English', 'Exciting young talent', 2),
('David De Gea', '31', 'Goalkeeper', 'Spanish', 'Top-class shot-stopper', 2);

-- Club 3 : Real Madrid
INSERT INTO players ("name", "age", "position", "nationality", "description", "club_id") VALUES
('Karim Benzema', '34', 'Forward', 'French', 'Clinical striker', 3),
('Luka Modric', '36', 'Midfielder', 'Croatian', 'Maestro in midfield', 3),
('Sergio Ramos', '36', 'Defender', 'Spanish', 'Commanding center-back', 3),
('Vinicius Jr.', '21', 'Forward', 'Brazilian', 'Exciting young winger', 3),
('Thibaut Courtois', '29', 'Goalkeeper', 'Belgian', 'World-class goalkeeper', 3);

-- Club 4 : Bayern Munich
INSERT INTO players ("name", "age", "position", "nationality", "description", "club_id") VALUES
('Robert Lewandowski', '33', 'Forward', 'Polish', 'Prolific goal scorer', 4),
('Joshua Kimmich', '27', 'Midfielder', 'German', 'Versatile and dynamic', 4),
('Erling Haaland', '22', 'Forward', 'Norwegian', 'Exciting young talent', 4),
('Leon Goretzka', '26', 'Midfielder', 'German', 'Box-to-box midfielder', 4),
('Manuel Neuer', '36', 'Goalkeeper', 'German', 'World-class shot-stopper', 4);

-- Club 5 : Juventus
INSERT INTO players ("name", "age", "position", "nationality", "description", "club_id") VALUES
('Cristiano Ronaldo', '37', 'Forward', 'Portuguese', 'Goal-scoring machine', 5),
('Paulo Dybala', '28', 'Forward', 'Argentinian', 'Creative playmaker', 5),
('Giorgio Chiellini', '37', 'Defender', 'Italian', 'Experienced center-back', 5),
('Federico Chiesa', '24', 'Forward', 'Italian', 'Exciting young winger', 5),
('Wojciech Szczęsny', '32', 'Goalkeeper', 'Polish', 'Reliable in goal', 5);





COMMIT;