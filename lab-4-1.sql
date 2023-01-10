-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

--SELECT * FROM players;


SELECT sum(hits)
FROM stats
WHERE player_id =
    (SELECT id 
    FROM players
    WHERE first_name = "Barry" AND last_name = "Bonds");

--SELECT sum(stats.hits)
--FROM players
--INNER JOIN stats ON players.id = stats.player_id
