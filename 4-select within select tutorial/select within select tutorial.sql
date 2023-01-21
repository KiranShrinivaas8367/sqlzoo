#1
List each country name where the population is larger than that of 'Russia'.

SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')
      
#2
Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.

select name from world
where continent = 'Europe'
and gdp/population > (select gdp/population from world where name = 'United Kingdom')

#3
List the name and continent of countries in the continents containing either Argentina or Australia. Order by name of the country.

select name,continent from world where continent = 
(select continent from world where name ='Argentina') or 
continent = (select continent from world where name = 'Australia')

#4
Which country has a population that is more than United Kingom but less than Germany? Show the name and the population.

select name,population from world
where population > (select population from world where name = 'United Kingdom')
and population < (select population from world where name = 'Germany')

