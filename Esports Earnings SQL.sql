


--Esports Earnings Project

SELECT * 
FROM ESL 



--# of Games 

SELECT DISTINCT(Game)
FROM ESL 



--# of Genres 

SELECT DISTINCT(Genre) 
FROM ESL



--# of players per each game 

SELECT Game,
       COUNT(Gamertag) TotalPlayers
FROM ESL
  GROUP BY Game 



--# of players per country 

SELECT Country,
       COUNT(Gamertag) TotalPlayers
FROM ESL
  GROUP BY Country
  ORDER BY TotalPlayers DESC



--Total prize per country 

SELECT Country,
       ROUND(SUM(TotalUSDPrize),2) Prize
FROM ESL 
  GROUP BY Country
  ORDER BY Prize DESC



--Average earnings per country

SELECT Country,
       ROUND(AVG(TotalUSDPrize),2) Prize
FROM ESL 
  GROUP BY Country
  ORDER BY Prize DESC



--Highest earnings per country 

SELECT Country,
       ROUND(MAX(TotalUSDPrize),2) Prize
FROM ESL 
  GROUP BY Country
  ORDER BY Prize DESC



--Player with the highest earnings 

SELECT FirstName,
       LastName,
       Gamertag,
       ROUND(SUM(TotalUSDPrize),2) Prize
FROM ESL 
  GROUP BY FirstName,
           LastName,
           Gamertag
  ORDER BY Prize DESC



--Average earnings per player across all games 

SELECT ROUND(AVG(TotalUSDPrize),2) AvgEarnings
FROM ESL 



--Average earnings per player across a distinct game 

SELECT Game,
       ROUND(AVG(TotalUSDPrize),2) AvgEarnings 
FROM ESL 
  GROUP BY Game 
  ORDER BY AvgEarnings DESC



--Average earnings per game 

SELECT Game,
       ROUND(AVG(TotalUSDPrize),2) Prize
FROM ESL 
  GROUP BY Game 
  ORDER BY Prize DESC



--Total earnings per game 

SELECT Game,
       ROUND(SUM(TotalUSDPrize),2) Prize
FROM ESL 
  GROUP BY Game 
  ORDER BY Prize DESC



--Average earnings per genre 

SELECT Genre,
       ROUND(AVG(TotalUSDPrize),2) AvgEarnings 
FROM ESL 
  GROUP BY Genre
  ORDER BY AvgEarnings DESC



--Total earnings per genre 

SELECT Genre,
       ROUND(SUM(TotalUSDPrize),2) TotalEarnings 
FROM ESL 
  GROUP BY Genre
  ORDER BY TotalEarnings DESC



--Top 5 Highest Earners in Dota 2 

SELECT TOP 5 FirstName,
             LastName,
             Gamertag,
             SUM(TotalUSDPrize) TotalEarnings
FROM ESL 
WHERE Game = 'Dota 2'
  GROUP BY FirstName,
           LastName,
           Gamertag 
  ORDER BY TotalEarnings DESC



--Top 5 Highest Earners in Counter-Strike: Global Offensive 

SELECT TOP 5 FirstName,
             LastName,
             Gamertag,
             SUM(TotalUSDPrize) TotalEarnings
FROM ESL 
WHERE Game = 'Counter-Strike: Global Offensive'
  GROUP BY FirstName,
           LastName,
           Gamertag 
  ORDER BY TotalEarnings DESC



--Top 5 Highest Earners in Fortnite 

SELECT TOP 5 FirstName,
             LastName,
             Gamertag,
             SUM(TotalUSDPrize) TotalEarnings
FROM ESL 
WHERE Game = 'Fortnite'
  GROUP BY FirstName,
           LastName,
           Gamertag 
  ORDER BY TotalEarnings DESC



--Top 5 Highest Earners in League of Legends 

SELECT TOP 5 FirstName,
             LastName,
             Gamertag,
             SUM(TotalUSDPrize) TotalEarnings
FROM ESL 
WHERE Game = 'League of Legends'
  GROUP BY FirstName,
           LastName,
           Gamertag 
  ORDER BY TotalEarnings DESC



--Top 5 Highest Earners in Starcraft II 

SELECT TOP 5 FirstName,
             LastName,
             Gamertag,
             SUM(TotalUSDPrize) TotalEarnings
FROM ESL 
WHERE Game = 'Starcraft II'
  GROUP BY FirstName,
           LastName,
           Gamertag 
  ORDER BY TotalEarnings DESC



--Top 5 Highest Earners in Hearthstone 

SELECT TOP 5 FirstName,
             LastName,
             Gamertag,
             SUM(TotalUSDPrize) TotalEarnings
FROM ESL 
WHERE Game = 'Hearthstone'
  GROUP BY FirstName,
           LastName,
           Gamertag 
  ORDER BY TotalEarnings DESC



--Top 5 Highest Earners in PUBG 

SELECT TOP 5 FirstName,
             LastName,
             Gamertag,
             SUM(TotalUSDPrize) TotalEarnings
FROM ESL 
WHERE Game = 'PUBG'
  GROUP BY FirstName,
           LastName,
           Gamertag 
  ORDER BY TotalEarnings DESC



--Top 5 Highest Earners in Overwatch 

SELECT TOP 5 FirstName,
             LastName,
             Gamertag,
             SUM(TotalUSDPrize) TotalEarnings
FROM ESL 
WHERE Game = 'Overwatch'
  GROUP BY FirstName,
           LastName,
           Gamertag 
  ORDER BY TotalEarnings DESC



--Top 5 Highest Earners in Heroes of the Storm 

SELECT TOP 5 FirstName,
             LastName,
             Gamertag,
             SUM(TotalUSDPrize) TotalEarnings
FROM ESL 
WHERE Game = 'Heroes of the Storm'
  GROUP BY FirstName,
           LastName,
           Gamertag 
  ORDER BY TotalEarnings DESC



--Top 5 Highest Earners in Arena of Valor 

SELECT TOP 5 FirstName,
             LastName,
             Gamertag,
             SUM(TotalUSDPrize) TotalEarnings
FROM ESL 
WHERE Game = 'Arena of Valor'
GROUP BY FirstName,
         LastName,
         Gamertag 
ORDER BY TotalEarnings DESC


