select i.flavor
from icecream_info as i 
join first_half as f on i.flavor = f.flavor
where i.ingredient_type = 'fruit_based' and f.total_order > 3000;