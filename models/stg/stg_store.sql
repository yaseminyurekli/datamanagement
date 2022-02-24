{{ config(materialized='table') }}

SELECT * FROM {{source('mysql_rds_sakila','store')}}
where _fivetran_deleted = FALSE