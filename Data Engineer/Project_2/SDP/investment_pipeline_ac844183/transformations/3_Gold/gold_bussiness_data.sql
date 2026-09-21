create or refresh materialized view sdp_investment.gold.gold_porfolio_holdings
as select
asset_class,instrument,qty,
sum(invested) as total_invested_value,
sum(cur_val) as total_current_value,
sum(p_and_l) as total_unrealized_pnl,
coalesce(round((sum(p_and_l)/nullif(sum(invested),0))*100,2),0) as total_unrealized_pnl_pct
from sdp_investment.silver.holding_silver_sdp
group by asset_class,instrument,qty
order by total_unrealized_pnl desc;
-- dividend by stock
create or refresh materialized view sdp_investment.gold.gold_dividend_by_stock
as 
with dividend_by_stock as (
    select instrument,sum(total_dividend) as total_dividend_income,count(*) as dividend_payment
    from sdp_investment.silver.dividend_silver_sdp
    group by instrument
)
select h.instrument,h.qty,h.invested,h.cur_val,h.p_and_l,
coalesce(d.total_dividend_income,0) as total_dividend_income,
coalesce(d.dividend_payment,0) as dividend_payment
from sdp_investment.silver.holding_silver_sdp h
left join dividend_by_stock d
on h.instrument=d.instrument;
-- stock wise dividend income
create or refresh materialized view sdp_investment.gold.gold_monthly_dividend
as
select date_trunc('year',ex_date) as year, date_trunc('month',ex_date) as month,
sum(total_dividend) as total_dividend_income,
count(*) as dividend_payment
from sdp_investment.silver.dividend_silver_sdp
group by date_trunc('year',ex_date),date_trunc('month',ex_date)
order by date_trunc('month',ex_date);