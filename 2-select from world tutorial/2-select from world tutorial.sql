#1
SQL command to show the name, continent and population of all countries.

SELECT name, continent, population FROM world

#2
Show the name for the countries that have a population of at least 200 million. 200 million is 200000000, there are eight zeros.

SELECT name FROM world
WHERE population >= 200000000

#3
Give the name and the per capita GDP for those countries with a population of at least 200 million.

select name, gdp/population as per_capita_gdp
 from world where population >=200000000

#4
Show the name and population in millions for the countries of the continent 'South America'. Divide the population by 1000000 to get population in millions.

select name,population/1000000 as population
 from world where continent = 'South America'
 
 #5
Show the name and population for France, Germany, Italy

select name,population from world
 where name in('France', 'Germany', 'Italy')
 
#6
Show the countries which have a name that includes the word 'United'

select name from world
 where name like '%United%'
 
#7
Show the countries that are big by area or big by population. Show name, population and area.

select name,population,area from world
 where area > 3000000 or population > 250000000



