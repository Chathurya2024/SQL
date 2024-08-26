#Customers_Who_Bought_All_Products

# This is my soltion to Customers Who Bought All Products
  
SELECT customer_id
FROM customer
GROUP BY customer_id 
HAVING COUNT(DISTINCT product_key) = 
(SELECT COUNT(DISTINCT product_key) FROM  product)


# notes
# STEP I - Group customer ID
# STEP II - Match the count of product key for each id [Product key from customer table is forgein key]
