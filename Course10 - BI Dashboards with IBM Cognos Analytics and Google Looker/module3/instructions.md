---
markdown-version: v1
tool-type: instructional-lab
branch: lab-2965-instruction
version-history-start-date: '2022-12-20T10:50:26Z'
audio-timestamp-of-request-to-generate-wav: '2024-10-26T01:58:38Z'
audio-file-url: https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Peer%20Graded%20Assignment%20-%20Part%202/instructions.md.wav
locales-url: https://cf-courses-data.static.labs.skills.network/aOv6bYN6IxTYdKkyf3QXEQ/instructions-v1-locales.json
---
<!--<center> <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/images/SN_web_lightmode.png" width="300"> </center>
-->

# Hands-on Lab: Creating Visualizations Using Cognos Analytics
**Estimated time needed:** 1hr 15 mins

In this lab, you will create some visualizations and add them to a dashboard using Cognos Analytics.

## Software Used
The hands-on lab will use the trial version of Cognos Analytics from IBM.

## Dataset Used
The dataset used in this lab comes from [here ](https://accelerator.ca.analytics.ibm.com/bi/?utm_source=skills_network&utm_content=in_lab_content_link&utm_id=Lab-IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork&perspective=authoring&pathRef=.public_folders%2FIBM%2BAccelerator%2BCatalog%2FContent%2FDAT00142&id=i22898C2A4DD748F79E0FC2BD017F4FE8&objRef=i22898C2A4DD748F79E0FC2BD017F4FE8&action=run&format=HTML&cmPropStr=%7B%22id%22%3A%22i22898C2A4DD748F79E0FC2BD017F4FE8%22%2C%22type%22%3A%22reportView%22%2C%22defaultName%22%3A%22DAT00142%22%2C%22permissions%22%3A%5B%22execute%22%2C%22read%22%2C%22traverse%22%5D%7D "here ") in the **IBM Accelerator Catalog**. The Terms of use for such are located at https://developer.ibm.com/terms/ibm-developer-terms-of-use/.

We are using a modified subset of that dataset for the lab, so to follow the lab instructions successfully, please use the dataset provided with the lab, rather than the dataset from the original source.

## Assignment Scenario
As a regional manager for a chain of car dealerships you need to build out a dashboard to allow you to understand your sales and service departments.

## Accessing the Dataset for this Final Assignment
The dataset used in this final assignment is provided as sample data within your Cognos environment, in a data module called **Auto group data module**.

<ins>To load and open the data module:</ins>

1. On the **navigation panel** of Cognos Analytics, select **Team content**. 

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Peer%20Graded%20Assignment%20-%20Part%202/images/AccessingSampleData.1.png" width="558">
    
<br>

Then select **Samples**.

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Peer%20Graded%20Assignment%20-%20Part%202/images/samples.png" width="558">
    
<br>

2. Now go to **By industry** > **Automotive** > **Data**.

3. Here the sample data used in this final assignment can be found, in a data module called **Auto group data module**. Right-click on **Auto group data module** and select **Create Dashboard**.

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Peer%20Graded%20Assignment%20-%20Part%202/images/AccessingSampleData.3.png" width="484">
    
<br>

## Guidelines for the Submission
Use the IBM Cognos Analytics-related course videos and hands-on lab *Creating Dashboards Using IBM Cognos Analytics* to help you complete the following tasks:

<ins>Create two dashboards as follows:</ins>

- One dashboard using the tabbed template that has 4 small rectangles at the top and a large rectangle below - rename this dashboard tab to **Sales**.

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Peer%20Graded%20Assignment%20-%20Part%202/images/GuidelinesForSubmission.1.png" width="533" height="300">
    
<br>

- One dashboard using the 2 x 2 rectangle areas tabbed template - rename this dashboard tab to **Service**.

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Peer%20Graded%20Assignment%20-%20Part%202/images/GuidelinesForSubmission.2.png" width="533" height="300">
    
<br>

<ins>Capture the following KPI metrics as visualizations:</ins>

1. On the **Sales** dashboard, capture the following KPI metrics: 
    
    - In the first small rectangle **(Panel 1)**, capture **Profit** (formatted to 1 decimal place in millions of US dollars)
    - In the second small rectangle **(Panel 2)**, capture **Quantity sold**
    - In the third small rectangle **(Panel 3)**, capture **Quantity sold by model** (as a bar chart)
    - In the fourth small rectangle **(Panel 4)**, capture **Average quantity sold**

<br>

2. On the **Sales** dashboard in the large rectangle **(Panel 5)**, display *Profit* by *Dealer ID* as a column chart, sorted in ascending order.

<br>

3. On the **Service** dashboard, capture the following KPI metrics as visualizations:
    - In the top left area **(Panel 1)**, capture the number of recalls per model of car (as a column chart)
    - In the top right area **(Panel 2)**, capture the customer sentiment by comparing positive, neutral, and negative reviews (as a treemap)
    - In the bottom left area **(Panel 3)**, capture the quantity of cars sold per month compared to the profit (as a line and column chart).
    - In the bottom right area **(Panel 4)**, capture the number of recalls by model and affected system (as a heat map). This will help us understand if there are any outliers for a given model or a specific system.

<br>

4. To export your dashboard as a PDF, follow instructions below:
    - On the application toolbar of your **dashboard page**, click **Share** icon.

        <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Peer%20Graded%20Assignment%20-%20Part%202/images/4.1.png" width="368" height="100">
        <br>

    - On the **Export** tab, check **Include filters** and click **Export**.

        <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Peer%20Graded%20Assignment%20-%20Part%202/images/4.2.png" width="300" height="375">
        <br>

    - On the **Print** pop-up page, in the **Destination** drop-down list, select **Save as PDF**.

        <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Peer%20Graded%20Assignment%20-%20Part%202/images/4.3.png" width="300" height="600">
        <br>

    - Save the PDF file on your local machine to any location you like (preferably your **Downloads** folder) for later upload and submission to the coursera platform.


## Author(s)
- [Steve Ryan](https://www.linkedin.com/in/stevelryan)

### Other Contributor(s) 
- [Sandip Saha Joy](https://www.linkedin.com/in/sandipsahajoy/)

<!-- ## Changelog
| Date | Version | Changed by | Change Description |
|------|--------|--------|---------|
| 2024-05-15 | 1.7 | Shubhra Das | Updated to make the contet more generic |
| 2023-09-25 | 1.6 | Dr. Pooja| removed grading information (to be included in Overview), Link updated for dataset |
| 2023-09-25 | 1.5 | Steve Ryan | Minor formatting edits |
| 2021-06-18 | 1.4 | Malika Singla | Update Screenshots |
| 2020-11-13 | 1.3 | Steve Ryan | Modified submission step 3 for panel 3 |
| 2020-10-21 | 1.2 | Steve Ryan | Added steps to Export as PDF |
| 2020-10-13 | 1.1 | Sandip Saha Joy | ID review |
| 2020-10-12 | 0.1 | Steve Ryan      | Initial version created in GitLab |
-->

## <h3 align="center"> © IBM Corporation. All rights reserved. <h3/>
