#1

Modify it to show the matchid and player name for all goals scored by Germany. To identify German players, check for: teamid = 'GER'

select matchid,player from goal
 where teamid = 'GER'

#2
Show id, stadium, team1, team2 for just game 1012

SELECT distinct id,stadium,team1,team2
  FROM game join goal
  on id = matchid
  where id=1012
  
#3
Modify it to show the player, teamid, stadium and mdate for every German goal.

SELECT player,teamid,stadium,mdate
  FROM game JOIN goal
  ON (id=matchid)
  where teamid = 'GER'
  
#4
Show the team1, team2 and player for every goal scored by a player called Mario player LIKE 'Mario%'

select team1,team2,player from game
 join goal on id = matchid
 where player like 'Mario%'
 
#5
Show player, teamid, coach, gtime for all goals scored in the first 10 minutes gtime<=10

SELECT player, teamid, coach, gtime
 FROM goal join eteam on id = teamid
 WHERE gtime<=10
 
#6
List the dates of the matches and the name of the team in which 'Fernando Santos' was the team1 coach.

select mdate,teamname from game
 join eteam on team1 = eteam.id
 where coach = 'Fernando Santos'
 
#7
List the player for every goal scored in a game where the stadium was 'National Stadium, Warsaw'

select player from goal
 join game on id = matchid
 where stadium = 'National Stadium, Warsaw'
 
#8
Instead show the name of all players who scored a goal against Germany.

SELECT distinct player
  FROM game JOIN goal ON matchid=id
    WHERE teamid!='GER' and (team1='GER' or team2='GER')
 
#9
Show teamname and the total number of goals scored.

select eteam.teamname,count(*) from
 eteam join goal on goal.teamid = eteam.id
 group by eteam.teamname
 
#10
Show the stadium and the number of goals scored in each stadium.

select stadium,count(*) from
 goal join game on id = matchid
 group by stadium
 
 #11
 For every match involving 'POL', show the matchid, date and the number of goals scored.
 
 SELECT matchid,mdate, count(*)
  FROM game JOIN goal ON matchid = id 
 WHERE (team1 = 'POL' OR team2 = 'POL') group by matchid,mdate
 
 #12
 For every match where 'GER' scored, show matchid, match date and the number of goals scored by 'GER'
 
 select matchid,mdate,count(*) from game
 join goal on id = matchid
 where team1 = 'GER' or team2= 'GER'
 and teamid='GER'
 group by matchid,mdate
 
 #13
 List every match with the goals scored by each team as shown. This will use "CASE WHEN" which has not been explained in any previous exercises.
 
 SELECT mdate,
  team1,
  sum(CASE WHEN teamid=team1 THEN 1 ELSE 0 END) score1, team2 , sum(CASE WHEN teamid=team2 THEN 1 ELSE 0 END) score2
  FROM game left JOIN goal ON matchid = id group by mdate,team1,team2
