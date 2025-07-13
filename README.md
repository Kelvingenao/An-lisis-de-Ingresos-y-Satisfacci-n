# 📊 Revenue and Customer Satisfaction Analysis

## 📌 Project Objective
This project aims to analyze sales data from a supermarket to identify purchasing patterns, revenue trends, and customer satisfaction levels. Using data analysis techniques, we seek to extract **valuable insights** that help better understand consumer behavior.

## 🛠️ Tools Used
- **MySQL**: For data cleaning and manipulation.
- **Power BI**: For data visualization and dashboard creation.

## 📂 Project Structure
The project is organized into different folders to facilitate file management:
- **📁 PBIX File**: Contains the Power BI file with the interactive dashboard.
- **📁 Dashboard**: Images and documents related to dashboard design.
- **📁 Diagram**: Table relationship diagrams and data model structure.
- **📁 Insights**: Key findings and conclusions from the data analysis.
- **📁 SQL Cleaning**: SQL scripts used for data cleaning.
- **📁 SQL Query**: SQL queries used to extract key insights.

## 📊 Data Used
The dataset used in this project, **"Supermarket Sales"**, was obtained from the [AmeriGEOSS Community Platform DataHub](https://data.amerigeoss.org/dataset/sspm-ventas-supermercados/resource/sspm_455.1).

📜 **License**: [CC-BY-4.0](https://creativecommons.org/licenses/by/4.0/). The data has been modified for this analysis.

## 📈 Key Questions & Insights

### 💰 What is the total revenue generated?
The total revenue generated is **307,587.38**.

---

### 🌍 How does revenue vary across branches and cities?
| Branch | City        | Revenue     |
|--------|-------------|-------------|
| C      | Naypyitaw   | 105,303.53  |
| A      | Yangon      | 101,143.21  |
| B      | Mandalay    | 101,140.64  |

🔹 Revenue is fairly evenly distributed across cities and branches.

---

### 💳 What is the most used payment method?
| Payment Method     | Count |
|--------------------|-------|
| E-wallet           | 345   |
| Cash               | 344   |
| Credit Card        | 311   |

🔹 **E-wallet** is the most frequently used payment method.

---

### 🛍️ Which product lines generate the most revenue?
| Product Line            | Revenue     |
|-------------------------|-------------|
| Food and Beverages      | 53,471.28   |
| Sports and Travel       | 52,497.93   |
| Electronic Accessories  | 51,750.03   |
| Fashion Accessories     | 51,719.90   |
| Home and Lifestyle      | 51,297.06   |
| Health and Beauty       | 46,851.18   |

🔹 **Food and Beverages** and **Sports and Travel** are the top-performing categories.

---

### 📊 What is the relationship between unit price and customer rating?
The relationship is mixed:
- Some expensive products receive high ratings.
- Some affordable products also receive high ratings.
- Most ratings are **above 6** when unit prices exceed 30.
- There are exceptions—some expensive items get low ratings.

🔹 Overall, **there is no strong correlation**, but moderately to highly priced items tend to receive better ratings.

---

### 👥 Which customer type buys more and how much do they spend on average?
| Customer Type | Purchase Count | Avg. Revenue |
|---------------|----------------|--------------|
| Member        | 2,785          | 312.18       |
| Normal        | 2,725          | 302.97       |

🔹 **Members** purchase more and spend slightly more on average.

---

### 👨‍👩‍👧‍👦 Are there differences in shopping patterns by gender?
| Gender    | Purchases | Revenue       |
|-----------|-----------|---------------|
| Female    | 2,869     | 159,888.50    |
| Male      | 2,641     | 147,698.88    |

🔹 **Women purchase and spend more** than men.

#### 🔍 Breakdown by gender and customer type:
| Gender   | Customer Type | Count | Avg. Revenue |
|----------|----------------|-------|--------------|
| Female   | Member         | 1,492 | 321.65       |
| Female   | Normal         | 1,377 | 316.41       |
| Male     | Member         | 1,293 | 301.89       |
| Male     | Normal         | 1,348 | 290.52       |

🔹 **Female members** are the highest-spending group.

---

### ⭐ What is the average customer satisfaction rating?
| Customer Type | Avg. Rating |
|---------------|-------------|
| Normal        | 7.01        |
| Member        | 6.94        |

🔹 Interestingly, **non-members give slightly higher ratings**.

## 🏁 Conclusion
- The supermarket generates **over $307K in revenue**, with **even distribution across branches**.
- **E-wallet** is the most popular payment method.
- Women shop and spend more than men.
- **Members spend more**, but rate the service slightly lower.
- No **clear correlation** between unit price and satisfaction rating.

## 🚀 Final Notes
This analysis was conducted using **MySQL and Power BI**. It can be expanded with more detailed visualizations or **machine learning techniques** to forecast future trends.

📌 *If you found this analysis useful, don't forget to ⭐ it on GitHub!*

