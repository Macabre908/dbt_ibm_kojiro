with supplier as (
    select 
        s_suppkey as supplier_id,
        s_name as name,
        s_address as address,
        s_nationkey as nation_id,
        s_phone as phone_number,
        s_acctbal as account_balance,
        s_comment as comment,
        updated_time
    from 
        {{source('src','suppliers')}}
)
select * from supplier