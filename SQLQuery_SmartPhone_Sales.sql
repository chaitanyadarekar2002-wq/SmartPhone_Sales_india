select Brands, AVG(Rating) as avg_rating 
from cleaned_smartphone_data
group by Brands
order by avg_rating desc;

SELECT 
  CASE 
    WHEN Original_Price < 10000 THEN 'Budget'
    WHEN Original_Price BETWEEN 10000 AND 30000 THEN 'Mid Range'
    ELSE 'Premium'
  END AS price_category,
  COUNT(*) AS total_phones
FROM cleaned_smartphone_data
GROUP BY 
  CASE 
    WHEN Original_Price < 10000 THEN 'Budget'
    WHEN Original_Price BETWEEN 10000 AND 30000 THEN 'Mid Range'
    ELSE 'Premium'
  END;

  select Original_Price,Rating from cleaned_smartphone_data

SELECT TOP 10 Brands, Models, Original_Price, rating, value_score
FROM cleaned_smartphone_data
ORDER BY value_score DESC;

SELECT Brands,
       AVG(Original_Price) AS avg_price
FROM cleaned_smartphone_data
GROUP BY Brands
ORDER BY avg_price DESC;

SELECT TOP 10 brands, models, discount
FROM cleaned_smartphone_data
ORDER BY discount DESC;