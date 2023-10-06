
    
    

select
    ProductID as unique_field,
    count(*) as n_records

from dbtdb.raw.oproduct_master
where ProductID is not null
group by ProductID
having count(*) > 1


