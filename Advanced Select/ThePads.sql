
select CONCAT(Name,'(', Left(Occupation,1),')') from Occupations order by Name;
select CONCAT('There are a total of ',COUNT(Occupation),' ',LOWER(Occupation),'s.') from Occupations group by Occupation  order by Count(Occupation);