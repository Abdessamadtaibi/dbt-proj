select violation_code,
       count(summons_number) as ticket_count,
       SUM(fee_usd) as total_revenue_usd
from
    {{ref('silver_v_tickets')}}
group by
    violation_code
order by
    total_revenue_usd DESC
