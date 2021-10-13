set @r1=0, @r2=0, @r3=0, @r4=0;

Select min(Doctor), min(Professor), min(Singer), min(Actor) from (
select case when occupation='Doctor' then (@r1:=@r1+1)
            when occupation='Professor' then (@r2:=@r2+1)
            when occupation='Singer'   then (@r3:=@r3+1)
            when occupation='Actor'    then(@r4:=@r4+1) end as RowNumber,
    case when occupation='Doctor' then Name end as Doctor,
    case when occupation='Professor' then Name end as Professor,
    case when occupation='Singer' then Name end as Singer,
    case when occupation='Actor' then Name end as Actor
    
    from Occupations order by Name )  
    temp group by RowNumber;
