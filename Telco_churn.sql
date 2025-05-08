--Churn Rate by Internet Service Type 
--Objective:- Identify the churn percentage for each internet service type

Select type,internet_service,count(*) as total_customers,
	sum(case when churn='Yes' then 1 else 0 end) as churn_count,
	Round((sum(case when churn ='Yes' then 1 else 0 end)*100/count(*)),2) as churn_rate
from churn_analysis
group by 1,2

---Insight:- From the above, it was identified that almost 40% of the calculated churn showcased that the highest churn is on the Fibre Optic internet service Type.

--Churn Rate by internet service type & online security 
--Objective: Compare churn rates for internet service types, highlighting security vulnerabilities.

Select type,internet_service,online_security,count(*) as total_customers,
	sum(case when churn='Yes' then 1 else 0 end) as churn_count,
	Round((sum(case when churn ='Yes' then 1 else 0 end)*100/count(*)),2) as churn_rate
from churn_analysis
where internet_service <> 'No'
group by 1,2,3
order by 6 desc

--Insight:- Reveals that 48 %  and 36% of fibre optic and cable networks that have no online security are at a higher risk of exposure to  network vulnerabilities and  show a high churn as well

--Payment Method vs. Churn
--Objective: Analyze if payment type (e.g., paperless billing) impacts churn
Select payment_type,paperless_bill,count(*) as total_customers,
	sum(case when churn ='Yes' then 1 else 0 end) as churn_count,
	round(avg(satisfaction),2) as avg_satifaction,
	Round(sum(case when churn ='Yes' then 1 else 0 end)*100/count(*),2) As churn_rate
from churn_analysis
where paperless_bill <> 'No'
group by 1,2
order by 6 desc
--Insight:- As far as the query it shows that payment types like mailed checks and direct debit payment methods have a higher churn rate, which means a higher risk. Hence, being paperless on bills has a high impact on churn as a factor.  This is due to multiple reasons, which are no hard trail on amounts being paid as the bills are all online, and difficulty in accessing the online portal. Mailed check shows the highest risk with the lowest satisfaction 

--Churn Risk by Dependents
--Objective: Determine if customers with dependents are less likely to churn.
Select dependents, count(no_of_dependents) as total_dependents,
	Round(avg(churn_score),2) as avg_churn,
	round(sum(case when churn='Yes' then 1 else 0 end)*100/count(*),2) as Churn_rate
from churn_analysis
where dependents <> 'No'
group by 1
order by 4 desc

--Insight:- Reveals a moderate churn score with a low churn rate, which suggests it has less of likely impact on churn risk.

--Top Churn Categories & Revenue Loss
--Objective: Quantify revenue loss from top churn categories (e.g., "Service Issues").
Select churn_category,count (*) as total_churned,
	Round(sum(revenue),2) as revenue_loss,
	Round(Avg(month_charge),2) as avg_month_charge
from churn_analysis
where churn_category is not null and churn= 'Yes'
group by 1
order by 3 desc

--Insight:- Reveals that most churned customers were coming under the competitor category, which could be high prices for unreliable service	

--Regional Churn Hotspots & Service Vulnerabilities
--Objective: Identify states/cities with high churn rates and correlate them with service deficiencies (e.g., lack of device protection).
select city, count(*) as Total_customers, 
	Round(sum(case when churn ='Yes' then 1 else 0 end),2) as churn_count,
	Round(sum(case when churn='Yes' then 1 else 0 end)*100/count(*),2)as churn_rate,
	sum(case when device_protection='No' then 1 else 0 end) as cx_without_DP,
	Sum(Case when tech_support ='No'then 1 else 0 end) as cx_without_TS
from churn_analysis
group by 1
Order by 5 desc
limit 5
--Insight:- Insight reveals the top 5 cities that have churn rates have service deficiencies like device protection and tech support. Which are San Diego, LA, Sacramento, San Francisco, and San Jose


