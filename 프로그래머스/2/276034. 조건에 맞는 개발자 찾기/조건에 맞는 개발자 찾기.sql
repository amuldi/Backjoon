select distinct(id), email, first_name, last_name
from developers as d
join skillcodes as s
ON d.skill_code & s.code = s.code  
where name = 'Python' or name = 'C#'
order by id;