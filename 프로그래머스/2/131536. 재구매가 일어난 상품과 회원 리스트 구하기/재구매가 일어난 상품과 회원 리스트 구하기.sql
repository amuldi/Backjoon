SELECT user_id as '회원 ID', product_id as'상품 ID'
from online_sale
group by user_id,product_id having count(*) > 1
order by user_id asc, product_id desc