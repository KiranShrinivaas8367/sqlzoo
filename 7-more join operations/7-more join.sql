#1
List the films where the yr is 1962 [Show id, title]

SELECT id, title
 FROM movie
 WHERE yr=1962
 
#2
Give year of 'Citizen Kane'.

select yr from movie
 where title = 'Citizen Kane'
 
#3
List all of the Star Trek movies, include the id, title and yr (all of these movies include the words Star Trek in the title). Order results by year.

select id,title,yr from movie
 where title like 'Star Trek%'
 order by yr
 
#4
What id number does the actor 'Glenn Close' have?

select id from actor
 where name = 'Glenn Close'
 
#5
What is the id of the film 'Casablanca'

select id from movie
 where title = 'Casablanca'
 
#6
Obtain the cast list for 'Casablanca'.

select name from actor
 join casting on actor.id = actorid
 where movieid=27
 
#7
Obtain the cast list for the film 'Alien'

select name from actor
 join casting on id=actorid
 where movieid=35
 
#8
List the films in which 'Harrison Ford' has appeared

select title from movie
 join casting on id = movieid
 where actorid = 6 
 
#9
List the films where 'Harrison Ford' has appeared - but not in the starring role.

select title from movie
 join casting on id = movieid
 where actorid = 6 and ord>1
 
#10
List the films together with the leading star for all 1962 films.

select title,name from movie
 join casting on id=movieid
 join actor on actorid = actor.id
 where yr=1962 and ord =1
