{{ config(materialized='table') }}

SELECT * FROM {{source('mysql_rds_sakila','address')}}
where _fivetran_deleted = FALSE