
    
    

with all_values as (

    select
        Category as value_field,
        count(*) as n_records

    from dbtdb.raw.oproduct_master
    group by Category

)

select *
from all_values
where value_field not in (
    'Urban','Mix','Youth'
)


