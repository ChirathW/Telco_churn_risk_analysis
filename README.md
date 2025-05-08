# Telecom Network Risk & Churn Analysis

## Objective
This project aims to identify key drivers of customer churn for a telecommunications service provider by analyzing factors such as internet service types, security features, payment methods, customer demographics, and regional service deficiencies. The goal is to uncover actionable insights to mitigate churn risks and reduce revenue loss.

## Methodology
- **Excel Power Query**: Cleaned raw customer data (missing values, duplicates) and merged tables (demographics, usage patterns, etc.).
- **SQL Analysis**: Leveraged SQL queries to segment and analyze the churn_analysis dataset.
- **Python**: Analyzed risk factors (e.g., contract type, tech support) using Pandas and visualized geographical trends with Seaborn (e.g., churn rates by service type, etc.).
- **Key Metrics**: Calculated churn rates, revenue loss, average satisfaction scores, and service deficiency correlations.
- **Segmentation**: Grouped data by attributes like internet service type, online security status, payment methods, dependents, and geographic regions.

## Key Findings
### 1. Internet Service & Security
- Fiber optic users exhibited the highest churn rate (~40%), with 48% of unsecured fiber optic customers churning.
- Lack of online security doubled churn risks for both fiber optic and cable users.

### 2. Payment Methods
- Paperless billing (e.g., mailed checks, direct debit) correlated with higher churn rates (lowest satisfaction scores).
- Customers using mailed checks showed the highest churn risk, likely due to billing accessibility issues.

### 3. Demographics
- Customers with dependents had a moderate churn score, suggesting limited impact on overall churn risk.

### 4. Revenue Impact
- Competitor-related churn categories contributed the highest revenue loss, indicating pricing or reliability issues.

### 5. Regional Hotspots
- Cities like San Diego, Los Angeles, and San Francisco had elevated churn rates due to service gaps (e.g., lack of device protection and tech support).

## Insights & Recommendations
- **Improve Service Quality**: Address reliability issues for fiber optic users and enhance tech support in high-churn regions.
- **Strengthen Security**: Promote online security features to reduce vulnerabilities.
- **Revise Billing Practices**: Simplify paperless billing processes and offer incentives for automated payment methods.
- **Competitor Analysis**: Investigate pricing strategies and service reliability to retain customers at risk of switching.

## Impact
This analysis provides a data-driven foundation to:
- Prioritize retention strategies.
- Reduce service gaps.
- Improve customer satisfaction.
- Curb revenue loss and enhance long-term profitability.
