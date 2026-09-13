create or refresh materialized view gold_porfolio_holdings
as select
asset_class,instrument,qty,
sum(invested) as total_invested_value,
sum(cur_val) as total_current_value,
sum(p_and_l) as total_unrealized_pnl,
coalesce(round((sum(p_and_l)/nullif(sum(invested),0))*100,2),0) as total_unrealized_pnl_pct
from live.holding_silver_sdp
group by asset_class,instrument,qty
order by total_unrealized_pnl desc;