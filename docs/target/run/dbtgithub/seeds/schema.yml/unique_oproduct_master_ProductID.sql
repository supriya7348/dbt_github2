select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    ProductID as unique_field,
    count(*) as n_records

from dbtdb.raw.oproduct_master
where ProductID is not null
group by ProductID
having count(*) > 1



      
    ) dbt_internal_test