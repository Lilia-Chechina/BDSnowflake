SELECT
    (SELECT COUNT(*) FROM mock_data) AS source_rows,
    (SELECT COUNT(*) FROM fact_sales) AS fact_rows,
    (SELECT COUNT(*) FROM dim_customer) AS customers,
    (SELECT COUNT(*) FROM dim_product) AS products;

SELECT
    COUNT(*) FILTER (WHERE customer_key IS NULL) AS missing_customers,
    COUNT(*) FILTER (WHERE product_key IS NULL) AS missing_products,
    COUNT(*) FILTER (WHERE date_key IS NULL) AS missing_dates
FROM fact_sales;

SELECT country_name, COUNT(*)
FROM dim_country
GROUP BY country_name
HAVING COUNT(*) > 1;
