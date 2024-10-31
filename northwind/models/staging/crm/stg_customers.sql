WITH sources AS (
    select * from {{ source('postgress_himw', 'customers') }}
)
SELECT
    id as customer_id,
    name,
    email
FROM 
    sources    