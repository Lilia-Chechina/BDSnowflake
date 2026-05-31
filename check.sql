docker compose exec -it postgres psql -U lab -d petshop_dw -c "SELECT COUNT(*) FROM fact_sales;"
