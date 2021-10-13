select if((A+B>C AND B+C>A AND A+C>B),
          IF(A=B and B=C,'Equilateral',
             IF(A=B OR B=C or A=C,'Isosceles','Scalene')),'Not A Triangle') from triangles;