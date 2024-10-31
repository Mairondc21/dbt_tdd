WITH sources AS (
    select * from {{ source('postgress_himw', 'orders') }}
)
SELECT
    *
FROM sources