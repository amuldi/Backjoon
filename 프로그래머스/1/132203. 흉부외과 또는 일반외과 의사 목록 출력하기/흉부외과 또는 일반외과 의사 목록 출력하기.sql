SELECT dr_name as '의사의 이름', dr_id as 의사ID, mcdp_cd as 진료과, date_format(hire_ymd,'%Y-%m-%d') as 고용일자
from doctor
where mcdp_cd = 'gs' or mcdp_cd = 'cs'
order by hire_ymd desc, dr_name asc;