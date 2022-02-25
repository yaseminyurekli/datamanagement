{{ config(materialized='table') }}

SELECT * FROM {{source('mysql_rds_sakila','actor')}}
where _fivetran_deleted = FALSE