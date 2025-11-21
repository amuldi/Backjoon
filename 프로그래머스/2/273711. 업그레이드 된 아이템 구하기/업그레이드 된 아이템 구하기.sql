select c.item_id, c.item_name, c.rarity
from item_info as a
join item_tree as b on a.item_id = b.parent_item_id
join item_info as c on b.item_id = c.item_id
where a.rarity = 'RARE'
order by item_id desc;