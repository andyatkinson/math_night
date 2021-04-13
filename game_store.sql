# game store


CREATE TABLE games(
  id serial PRIMARY KEY,
  title VARCHAR (100) NOT NULL,
  price integer NOT NULL
);

CREATE TABLE my_games(
  name VARCHAR (100) NOT NULL,
  game_id integer NOT NULL
);

INSERT INTO games (title, price)
VALUES
    ('Fortnite for Nintendo Switch', 30),
    ('Minecraft Nintendo Switch', 30),
    ('Among Us', 5),
    ('Animal Crossing: New Horizons', 60);


INSERT INTO my_games (name, game_id) SELECT 'Lucas', id from games where title = 'Fortnite for Nintendo Switch';
INSERT INTO my_games (name, game_id) SELECT 'Lucas', id from games where title = 'Animal Crossing: New Horizons';
INSERT INTO my_games (name, game_id) SELECT 'Jane', id from games where title = 'Minecraft Nintendo Switch';
INSERT INTO my_games (name, game_id) SELECT 'Jane', id from games where title = 'Among Us';

-- least expensive
select title as "least expensive", price from games order by price ASC limit 1;

-- most expensive
select title as "most expensive", price from games order by price DESC limit 1;

-- View all the games by price
select title, price from games order by price asc;


-- List all owned games
select my_games.name, games.title, games.price from my_games join games ON my_games.game_id = games.id order by my_games.name;

-- List all games for Lucas
select my_games.name, games.title from my_games join games ON my_games.game_id = games.id
where my_games.name = 'Lucas';

-- List all games for Jane
select my_games.name, games.title from my_games join games ON my_games.game_id = games.id
where my_games.name = 'Jane';

-- Find games with the same price
select * from games where price = (select price from games group by price having count(*) > 1);
