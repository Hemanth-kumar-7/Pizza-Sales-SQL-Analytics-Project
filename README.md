# 🍕 Pizza Sales SQL Analytics Project  

## 📌 Project Overview  
This project explores a pizza sales dataset using SQL to uncover insights that can help managers make smarter, data-driven decisions. The analysis focuses on sales performance, customer behavior, and business trends to guide strategy and growth.  

## 📂 Dataset  
The dataset includes four key tables:  
- **orders** → order_id, order_date  
- **order_details** → order_details_id, order_id, pizza_id, quantity  
- **pizzas** → pizza_id, pizza_type_id, size, price  
- **pizza_types** → pizza_type_id, name, category, ingredients  

## 🎯 Business Questions Answered  
- What is the total revenue?  
- How much revenue comes from each pizza size?  
- Which pizza types generate the most revenue?  
- What are the top 5 best-selling pizzas?  
- Which pizzas sell the least?  
- What’s the average order value (AOV)?  
- How many pizzas are ordered on average per transaction?  
- What’s the busiest day of the week?  
- What are the peak ordering hours?  
- How many unique orders are placed each month?  
- How does monthly revenue trend over time?  
- Which pizza category is the most popular?  
- What’s the revenue by category?  
- What is the month-over-month growth rate?  
- Which pizzas are consistently in demand?  

## 🛠 SQL Techniques Used  
- **Joins** (INNER, LEFT)  
- **Aggregations** (SUM, COUNT, AVG, GROUP BY, HAVING)  
- **Window Functions** (LAG, ROW_NUMBER, RANK)  
- **CTEs** (Common Table Expressions)  
- **Date Functions** (MONTH, DAYNAME, HOUR, DATE_FORMAT)  

# 📊 Business Insights & Recommendations  

## 🔹 Revenue Drivers  
- Large pizzas account for nearly 45% of total revenue, showing customers clearly prefer bigger sizes.  
- Premium categories like **Chicken and Supreme pizzas** bring in the highest revenue, while niche options such as the **Brie Carre Pizza** lag behind.  

## 🔹 Top & Bottom Sellers  
- **Best sellers:** BBQ Chicken Pizza and Classic Deluxe Pizza consistently perform well.  
- **Low sellers:** Specialty pizzas with unusual ingredients make up less than **2% of overall sales**.  

## 🔹 Customer Behavior  
- The **average order value** falls between **₹350 and ₹400**.  
- Customers typically buy **two pizzas per order**, suggesting that most purchases are for families or groups.  

## 🔹 Time-Based Trends  
- **Peak sales:** 6–9 PM on **Fridays and Saturdays**, driven by dinner rush and weekend gatherings.  
- **Low sales:** Mornings and weekdays before noon.  
- **Monthly trends:** Steady growth, with spikes during weekends and festive periods.  

## 🔹 Operational Insights  
- A handful of pizzas drive most sales → stocking should focus heavily on the **top 10 performers**.  
- Certain **pizza-size combinations sell poorly**, adding unnecessary inventory costs without boosting revenue.  

---

# 📌 Recommendations  

## 🍕 Menu Optimization  
- Highlight the **top 5 pizzas** in marketing campaigns.  
- Phase out or rebrand **underperforming pizzas** to reduce overhead and streamline the menu.  

## 💵 Pricing Strategy  
- Since large pizzas dominate sales, test **combo deals** like Buy 1 Large, Get 1 Medium at 50% off to push medium pizza sales.  
- Launch **family bundles** on weekends to attract group purchases.  

## ⚙️ Operational Efficiency  
- Stock more ingredients for **high-demand pizzas** during weekends to avoid stockouts.  
- Use sales data to **forecast demand** and fine-tune inventory.  

## 🎯 Customer Engagement  
- Offer **discounts** for repeat customers, especially during off-peak hours.  
- Run **seasonal promotions** to boost sales in slower months.  

## 🚀 Future Growth  
- If available, analyze **delivery vs. dine-in** patterns to refine service models.  
- Expand best-selling recipes into **new variations** like BBQ Chicken Supreme.  

---

# ✅ Conclusion  
This project showed how SQL can be a powerful tool for analyzing real-world sales data and uncovering meaningful business insights. By exploring pizza orders, customer preferences, and revenue patterns, I was able to identify best-selling products, peak demand times, and opportunities for improving operations.  

Key takeaways:  
- Large pizzas and premium categories drive the majority of revenue.  
- Niche pizzas contribute little value.  
- Weekend evenings are the busiest sales periods, opening opportunities for promotions and smarter inventory planning.  

Through this project, I demonstrated my ability to:  
- Write and optimize SQL queries to solve business problems.  
- Translate raw data into clear, actionable insights.  
- Provide data-driven recommendations that support strategic decisions.  

Overall, this project highlights my potential as an **Aspiring Data Analyst** and showcases my capability to turn data into valuable business intelligence.  
.  

## 🚀 How to Run This Project  
1. Import the dataset into an SQL environment.  
2. Run the queries from **pizza_sales_queries.sql**.  
3. Review results and compare with business expectations.  

## 📌 Future Improvements  
- Build interactive dashboards in Power BI.  
- Segment customers for more targeted marketing.  
- Use Python + SQL to forecast future sales.  
