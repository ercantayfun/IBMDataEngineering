---
tool-type: instructional-lab
branch: lab-3509-instruction
version-history-start-date: '2023-01-09T06:52:53Z'
markdown-version: v1
audio-timestamp-of-request-to-generate-wav: '2024-10-29T03:37:31Z'
audio-file-url: https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/Final%20Assignment/Reading-%20Identify%20Analytical%20requirements.md.wav
locales-url: https://cf-courses-data.static.labs.skills.network/4OY_ju6ma96nvdfDSa5pwA/Reading-%20Identify%20Analytical%20requireme-v1-locales.json
---
<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/module%201/images/SN_web_lightmode.png" width="300" alt="cognitiveclass.ai logo">

### Identify Analytical Requirements

Before an organization starts to build a data warehouse, it must identify its analytics requirements. Once a data warehouse is built, it would be difficult to use it to generate analytics that it was not designed for. Understanding and collecting analytics requirements is an important first step in the design process of a data warehouse.

In this assignment, you will be designing a data warehouse for a solid waste management company. 

Here are a few things to keep in mind before you proceed to build a data warehouse.

<b>Organazation level analytics requirements</b>
Identify what are the analytics requirements that are needed at the over all organazation level.

<b>Department level analytics requirements</b>

Identify what are the analytics requirements that are needed at the level or various departments in the organization.

<b>Performance analytics requirements</b>

Performance analytics help an organazation to track how its operations are being carried out. For example these include reports like:

- How many products sold in the last quarter.
- How many tons of raw material used per product.
- Total sales per product in the last month.

<b>Granularity of reports</b>

Granularity has a major impact on the dataware house design. When you identify the grain, you specify exactly what a fact table record contains. The grain conveys the level of detail that is associated with the fact table measurements. When you identify the grain, you also decide on the level of detail you want to make available in the dimensional model. If more detail is included, the level of granularity is lower. If less detail is included, the level of granularity is higher.

The level of detail that is available in a star schema is known as the grain. Each fact and dimension table has its own grain or granularity. Each table (either fact or dimension) contains some level of detail that is associated with it. The grain of the dimensional model is the finest level of detail that is implied when the fact and dimension tables are joined.

For example, the granularity of a dimensional model that consists of the dimensions Date, Store, and Product is product sold in store by day.

Identify, if the organazation needs reports year wise, quarter wise, month wise, week wise, day wise or hour wise.

Identify if the organazation needs reports at country level, region level, state level, district level or individual store level.

<b>Diagnostic analytics requirements</b>

Diagnostic analytics are used, when an organazation wishes to analyze why a certain thing happened. For example, an organization wishes to know, why a particular product's sales has declined. These analytics, usually are trends over a period of time.

Example:

- total sales of a product for the past 10 quarters. (this report helps in identifying when the sales started to decline)
- sales for a product country wise. ((this report helps in identifying which countries prefer which product)

<b>Ad-Hoc Analytics requirements</b>

In spite of all the requirement collection process, it would never be possible to collect or anticipate all the analytics requirements. So when we design a data warehouse, we need to keep in mind, that there would always be an ad-hoc analytics requirement that may come up from time to time. The data warehouse design should be in such a way, that it should be able to accomodate ad hoc analytics needs to some reasonable extent.

