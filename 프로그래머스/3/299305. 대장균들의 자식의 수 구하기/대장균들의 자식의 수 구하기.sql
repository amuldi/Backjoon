select a.id, count(b.id) as CHILD_COUNT
from ecoli_data as a
left join ecoli_data as b on b.parent_id = a.id
group by a.id
order by a.id;
