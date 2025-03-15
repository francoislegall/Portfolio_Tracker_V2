with

all_soldewallet as (

select * from {{ref("stg_portfolio_tracker__binance_soldewallet")}}
union all
select * from {{ref("stg_portfolio_tracker__evm_soldewallet")}}
union all
select * from {{ref("stg_portfolio_tracker__mexc_soldewallet")}}
union all
select * from {{ref("stg_portfolio_tracker__starknet_soldewallet_dataviz")}}

)

select * from all_soldewallet


