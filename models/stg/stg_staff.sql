{{ config(materialized='table') }}

SELECT * FROM {{source('mysql_rds_sakila','staff')}}
where _fivetran_deleted = FALSE