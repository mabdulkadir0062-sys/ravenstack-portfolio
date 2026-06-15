# RavenStack Analytics Dashboards 📊

A Power BI project built to track customer behavior churn subscriptions and feature usage across a SaaS platform. Data covers 2023 and 2024.

---

## 💼 Business Problem

This project was built to give companies why customers were leaving which plan tiers were generating the most revenue or whether product features were actually being used. Without this decisions around retention, pricing and product investment were being made blind.

Four dashboards were built to answer four core questions.

1. Who are our customers and where are they coming from?
2. Why are customers churning and which segments are most at risk?
3. How is subscription revenue growing and where is it concentrated?
4. Are users engaged with the product and is the platform stable?

---

## 📊 Visualizations

### Dashboard KPI Cards Summary

Each dashboard surfaces key metrics as card visuals at the top. Here is a full breakdown.

| Dashboard | Metric | Value |
|---|---|---|
| Customer Overview | Trial Users | 97 |
| Customer Overview | Churn Rate % | 22.00% |
| Customer Overview | Churned Customers | 110 |
| Customer Overview | Active Users | 390 |
| Churn Analysis | Total Churned Customers | 352 |
| Churn Analysis | Total Churn Events | 600 |
| Churn Analysis | Total Refund Amount | $8.65K |
| Churn Analysis | Total Customers | 500 |
| Subscription | Churn Rate % | 11.10% |
| Subscription | ARR | $26M |
| Subscription | MRR | $2M |
| Subscription | Total Customers | 1K |
| Feature Usage | Error Rate % | 5.53% |
| Feature Usage | Avg Session Duration (min) | 50.85 |
| Feature Usage | Total Errors | 547 |
| Feature Usage | Total Usage Events | 10K |

---

### Customer Overview Dashboard

*Total Customers Trend (Line Chart)*
Tracks monthly customer count across 2023 and 2024. The trend is uneven rising from around 35 in January to a peak near 58 around October before dropping back to roughly 35 in December. The dip toward year-end is worth watching. It suggests seasonal drop-off or a retention failure in Q4.

*Total Customers by Country (Bar Chart)*
The US is the dominant market by a significant margin sitting close to 300 customers. The UK and India follow at roughly 60–70 each. Australia Germany Canada and France are all much smaller. This shows the product is essentially US-dependent which is a geographic concentration risk.

*Total Customers by Trial (Donut Chart)*
403 customers (80.6%) are on paid plans. 97 (19.4%) are on trial. The trial-to-paid conversion rate is strong but it also means there are nearly 100 users sitting in trial who have not yet committed.

*Industry Breakdown (Table)*
A matrix showing customer count by industry and plan tier. DevTools leads with 113 customers (36 Basic 35 Enterprise 42 Pro). FinTech follows at 112. EdTech is the smallest at 79. Pro is the dominant tier across every industry which matters when looking at churn because Pro also churns the most.

*New Customers by Plan Tier Over Time (Line Chart)*
Three lines (Basic Enterprise Pro) tracked monthly. All three stay relatively flat between 10 and 20 new customers per month with no strong upward trend. Pro consistently runs slightly higher than Basic and Enterprise. The flatness here combined with the churn data explains why overall customer count is not growing aggressively.

---

### Customer Behavior & Churn Analysis Dashboard

*Total Churn Event by Plan Tier (Horizontal Bar Chart)*
Pro has the highest churn event count followed by Enterprise and Basic at roughly similar levels. Despite Pro being the most popular tier it is also the most churned. This suggests either pricing friction or unmet expectations at that tier.

*Total Refund Amount by Plan Tier (Horizontal Bar Chart)*
Pro and Basic both sit around $3K–$3.5K in refunds. Enterprise is lower at roughly $2K. Pro generating the most refunds is consistent with it being the highest-churn tier. The total refund pool of $8.65K is relatively small which means most churns are happening without a refund request.

*Total Churn Event by Industry (Horizontal Bar Chart)*
DevTools leads churn with over 100 events followed closely by FinTech. Cybersecurity and HealthTech sit in the middle. EdTech has the fewest churn events. DevTools and FinTech being both the largest and most churned segments is a compounding problem.

*Total Churn Event by Referral Source (Horizontal Bar Chart)*
Organic is the top churn source followed by "other" event partner and ads. All five sources are fairly close in volume but organic leading churn is significant. Organic users typically have the least hand-holding during onboarding which may explain why they disengage faster.

*Total Churn Event by Month and Year (Line Chart)*
This is one of the most telling charts. In 2023 churn events were low and flat staying near zero for most of the year. In 2024 churn started climbing from around March and accelerated sharply from October onward peaking at roughly 120 events in December. This is a clear worsening trend. Whatever changed in the product pricing or competitive landscape in mid-2024 started driving customers out at the end of the year.

*Total Churn Event by Plan Tier and Referral Source (Grouped Bar Chart)*
Breaks down churn at the intersection of plan tier and referral source. Organic churn dominates for Pro users. For Enterprise the churn is more evenly distributed across sources. Basic shows organic again as the top churn driver. Across all tiers organic and "other" channels are consistently problematic.

---

### Subscription Dashboard

*MRR by Plan Tier (Horizontal Bar Chart)*
Enterprise contributes the most MRR at roughly $1.7M while Pro sits around $400K and Basic is minimal. Despite having fewer customers than Pro Enterprise drives the vast majority of monthly revenue. This makes Enterprise retention the single most financially important metric in this dataset.

*Upgrade vs Downgrade Flag by Plan Tier (Grouped Bar Chart)*
For every plan tier upgrades outnumber downgrades. Pro has the highest upgrade activity (~45) vs downgrades (~25). Enterprise and Basic follow the same pattern. The fact that upgrades consistently beat downgrades is a positive signal meaning customers who stay are generally moving up not down.

*Monthly New Customers (Line Chart)*
New customer acquisition started at roughly 40 per month in January and grew steadily reaching nearly 200 by December. This is the strongest growth trend in the entire dataset. Acquisition is clearly working but the churn rate at 11.10% is absorbing a large portion of this growth before it compounds.

*Daily New Customers (Line Chart)*
Daily acquisition fluctuates between 50K and 100K in total customer value terms with significant day-to-day volatility. Spikes appear around days 5 10 and 25 possibly corresponding to campaign pushes or billing cycle activity. The sharp drop at day 30–31 may reflect end-of-month churn rather than a true acquisition drop.

---

### Feature Usage Dashboard

*Top 5 Feature Usage Frequency (Horizontal Bar Chart)*
feature\_26 is the most used with roughly 380 usage events followed by feature\_8 feature\_12 feature\_10 and feature\_1 all sitting between 300 and 350. Usage is fairly concentrated in these five features which means the rest of the product (21+ features) is getting relatively low engagement.

*Monthly Error Trend (Line Chart)*
Errors started high in January at around 58 dropped to a low near 38 in April spiked again in May to around 55 then gradually declined through the rest of the year settling around 42–45 in Q4. The early-year spike and mid-year spike suggest either product releases introducing bugs or traffic surges the platform was not ready for. The trend does improve by year-end which is encouraging.

*Daily Active Users (Line Chart)*
DAU fluctuates between 20 and 40 throughout the month with a notable dip around day 14–15 dropping close to 20. There is no strong upward trend in daily engagement suggesting the product has a consistent but not growing core user base day-to-day.

*Monthly Active Users (Line Chart)*
MAU stays between 80 and 100 for most of the year. January starts near 95 dips to around 75 in February recovers then peaks close to 95 in August. December ends around 83. The relatively flat MAU despite growing new customer acquisition suggests churn is neutralising growth at the engagement level too.

---

## 📊 Key Insights

Churn is getting worse over time not better. The 2024 churn trend shows a sharp escalation in the second half of the year peaking in December. This is the most urgent signal in the data.

Enterprise is where the money is. Despite being the middle tier by customer count Enterprise generates the lion's share of MRR. Losing a handful of Enterprise accounts has more financial impact than losing dozens of Basic or Pro customers.

Organic acquisition churns the most. Users who find the product on their own are leaving faster than those acquired through ads events or partners. This points to an onboarding or expectation-setting problem not a product problem.

Pro is popular but unstable. It has the most customers the most churn events and the most refunds. The gap between what Pro users expect and what they get needs to be understood.

Feature engagement is narrow. Five features carry the bulk of usage. If those features ever degrade in quality or become available elsewhere engagement could collapse quickly.

Error rate at 5.53% is not catastrophic but it is enough to frustrate users. The early and mid-year error spikes coincide with the period when churn started accelerating in 2024.

New customer acquisition is genuinely strong. Monthly new customers nearly quintupled over the year. The business can grow fast if churn is brought under control.

---

## ✅ Business Recommendations

*Fix Pro tier retention first.* Pro is the largest and most churned segment. A dedicated onboarding sequence a check-in at day 30 and a clear value communication at the 60-day mark could reduce churn meaningfully. Survey recently churned Pro users to understand exactly what was missing.

*Protect Enterprise at all costs.* Enterprise drives the majority of MRR. Assign dedicated account managers to every Enterprise customer. Build quarterly business reviews into the relationship. Even reducing Enterprise churn by a few accounts per quarter has a large revenue impact.

*Rethink the organic acquisition channel.* Organic users churn the most across all plan tiers. This could mean the product's self-serve discovery experience is attracting the wrong people or that there is no onboarding for users who come in without a sales conversation. Either way organic users need more structured support post-signup.

*Investigate the December churn spike.* 120 churn events in one month is abnormal. Was there a pricing change a competitor launch a product outage or a billing issue that month. Identifying the root cause is urgent before the same pattern repeats.

*Push trial users to convert.* 97 trial users is a meaningful pool. A targeted in-app nudge or email sequence focused on the top 5 features (which are already proven to drive engagement) could convert a meaningful portion of these into paid customers.

*Fix the top error sources.* With 547 total errors and a 5.53% error rate there are specific failure points in the product. Identifying which features or flows generate the most errors and fixing them in Q1 could improve retention especially for Pro users who are already on the edge.

*Expand beyond the US market intentionally.* The UK and India are the next largest markets but still small. A focused go-to-market push in one of these markets with localised onboarding could diversify geographic risk without a massive investment.

*Invest in the top 5 features.* Since feature\_26 through feature\_1 carry most of the engagement making these features faster more reliable and better documented is the highest-leverage product investment available right now.

---

## Conclusion

Acquisition is working. The product is generating revenue. But churn is eating the gains before they compound. The 2024 acceleration in churn events particularly in Q4 is the clearest signal that something in the customer experience broke down during the year. The fixes are not mysterious. They are concentrated in the Pro tier the organic acquisition channel and a product error rate that needs to come down. Solving those three things while protecting Enterprise accounts is the clearest path to sustainable growth.

