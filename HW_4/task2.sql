SELECT DISTINCT mark, (select count(1) 
FROM auto a1 
WHERE a1.mark = a.mark) AS count_of_this_mark, (select count(1) 
FROM auto a1 
WHERE a1.mark != a.mark) AS count_of_another_mark 
FROM auto a;