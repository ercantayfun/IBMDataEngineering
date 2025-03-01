---
markdown-version: v1
tool-type: instructional-lab
branch: lab-7835-instruction
version-history-start-date: '2023-08-02T17:29:07Z'
audio-timestamp-of-request-to-generate-wav: '2024-10-26T02:04:01Z'
audio-file-url: https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/labs/v2/Hands-on_Lab%3A_Advanced_Dashboard_Capabilities_Cognos.md.wav
locales-url: https://cf-courses-data.static.labs.skills.network/SOSyWpTl_hLf1M0_7pHd0w/Hands-on%20Lab-%20Advanced%20Dashboard%20Capabilities%20Cognos-v1-locales.json
---
<center> <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/images/SN_web_lightmode.png" width="300"> </center>

# Hands-on Lab: Advanced Dashboard Capabilities in Cognos Analytics
**Estimated time needed:** 45 minutes

## Purpose of the Lab: 

This lab focuses on enhancing skills in utilizing advanced features of IBM Cognos Analytics to create more dynamic and interactive dashboards. It delves into creating calculations, manipulating data points within visualizations, applying top/bottom settings on visualizations, and constructing navigation paths. Additionally, the lab provides hands-on experience in filtering data within a dashboard. The exercises are designed to provide a deeper understanding of how to leverage Cognos Analytics for more complex data analysis and visualization tasks, moving beyond basic dashboard creation. 

 

## Benefits of Learning the Lab: 

Engaging in this lab offers several key benefits for those interested in data analytics and visualization.You will acquire practical skills in advanced dashboarding techniques, such as creating custom calculations, effectively filtering and manipulating data, and utilizing Cognos Analytics to its full potential for comprehensive data analysis. These skills are vital for professionals in data analysis, business intelligence, and decision-making roles, as they allow for more nuanced and insightful analysis of data. The ability to create interactive and detailed dashboards enhances one's capability to present data in a more engaging and informative manner. This knowledge is particularly beneficial for those seeking to improve their data presentation skills, making complex data more accessible and actionable for decision-makers. Overall, the lab provides a strong foundation in advanced data visualization techniques, making it a valuable learning experience for advancing one’s career in the field of data analytics. 

## Software Used in this Lab
Like the videos in the course, for the hands-on labs, we will be using IBM Cognos Analytics trial version (currently limited to 30 days), as this is available at no charge.

## Dataset Used in this Lab
The dataset used in this lab comes from the VM designed to showcase IBM Cognos Analytics. This dataset is published by IBM. You can download the dataset file directly from here: [CustomerLoyaltyProgram.csv](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%206%20-%20%20Advanced%20Dashboard%20Capabilities%20in%20Cognos%20Analytics/CustomerLoyaltyProgram.csv)

## Objectives
After completing this lab, you will be able to:

- Start a new dashboard
- Create calculations
- Keep/exclude data points from a visualization
- Set top/bottom on a visualization
- Create and leverage navigation paths
- Filter data in a dashboard

## Exercise 1: Start a New Dashboard 
In this exercise, you will start a new dashboard for working with advanced Cognos Analytics dashboard capabilities.

1. To sign in to the Cognos Analytics platform with your IBMid, go to [myibm.ibm.com/dashboard/](https://myibm.ibm.com/dashboard/?utm_source=skills_network&utm_content=in_lab_content_link&utm_id=Lab-IBMSkillsNetwork-DV0130EN-Coursera).
2. Enter your IBMid and password.
3. Scroll down and click **Launch**.

    ![Cognos Analyutics trial window with launch button.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/launch.png "Lab3_Cognos_launch")
    
4. From the **Recent** section, click the uploaded data file **CustomerLoyaltyProgram.csv**.

    ![Cognos recent tab with uploaded csv file.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/3.B.1.png "Lab3_Cognos_recent")
    
5. The template window will be displayed, allowing you to select the type of dashboard and the template style. Select the **Tabbed** dashboard style. This will allow you to have multiple pages for your dashboards. Select the *five-panel template*, then click **Create**.

    ![Cognos template window with Tabbed and fuve-panel templates highlighted.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_1.5.png "Lab3_Cognos_template")
    
6. To save the newly created dashboard, press **CTRL+S** or click the **Save** icon and then click **Save as**. 

  ![Cognos save menu with save as highlighted.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_1.png "Lab3_Cognos_save") 

7. A new **Save as** window will pop up. Follow the steps as displayed below to save your dashboard as **Advanced Dashboard** in the **My content** section.
	
![Cognos Save as window with Advanced Dawhboard option highlighted.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_2.png "Lab3_Cognos_Save1")
    
8. As you build the dashboard, the location placement for visualization widgets in the dashboard template will be referenced using the following Panel numbers.

  ![Cognos dashboard template panel numbers, 1 through 6.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_1.7.png "Lab3_cognos_template1")
    
9. From the **Navigation** panel, select **Sources** to ensure the data source panel is open in the left pane.
     
10. From the data source panel, select **Revenue** and drag it to the center of **Panel 1**, releasing it once you see the drop zone turn blue.

  ![Dragging Revenue to the middle of Panel 1.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_5.png "Lab3_Cognos_9")
    
11. Click the summary chart in Panel 1 to bring it into focus. From the on-demand toolbar that appears in the main toolbar, click **Summarize**, and then select **Average**.

   ![Panel 1 Summarize menu with Average highlighted.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_6.png "Lab3_Cognos_average")

12. In the summary chart in Panel 1, select the title of the visualization and change it to *Average Revenue*.
13. From the **Navigation** panel, select **Widgets** to open the widgets panel. Drag and drop **Money coin** from **Shapes** to the center of Panel 1.

  ![Navigation panel highlights Money coin to drag to Panel 1.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_7.png "Lab3_Cognos_moneycoin")
    
14. To save the current work in the dashboard, press **CTRL+S** or click **Save** in the toolbar.

15. Your Panel 1 visualization should look similar to the one below:

  ![Panel 1 visualization with Average Revenue.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_1.13.png "Lab3_Cognos_1.13")
    
<br>

## Exercise 2: Working with Advanced Cognos Analytics dashboard capabilities
In this exercise, you will practice some advanced Cognos Analytics dashboard capabilities.
- Task A: Create calculations 
- Task B: Keep/Exclude Data Points from a visualization
- Task C: Set Top/Bottom on a visualization
- Task D: Create and Leverage navigation paths
- Task E: Filter Data in the current tab

### Task A: Create Calculations 
1. From the **Navigation** panel, select **Sources** to open the data source panel if it is not already open. The data source panel displays the uploaded file **CustomerLoyaltyProgram.csv** as the selected source.
2. Right-click the **CustomerLoyaltyProgram.csv** data source and select **Calculation**.

  ![Data source panel withCustomerLoyaltyProgram.csv file and Calculation highlighted.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_2.A.2.png "Lab3_Cognos_2.A.3")
  
 3. Change the calculation name to **Margin**. From the **Components** panel, drag **Unit Sale Price** to the **Expression** field, type a space, then the minus sign, **-**, to the right of it, and then drag **Unit Cost** to the right of that. Click **OK**.

  ![Create calculation with Name and Margin tabs and Expression highlighted.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_8.png "LAb3_Cognos_exp1")
   
  ![Expression 1 Unit_Sale_Price - Unit_Cost.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_2.A.3.png "Lab3_Cognos_exp2")
    
4. In the data source panel, expand CustomerLoyaltyProgram.csv if needed, and drag **Margin** to the center of **Panel 2**, releasing it once you see the drop zone turn blue.
5. Right-click the margin chart in Panel 2, point to **Summarize**, and then select **Average**.
6. From the data source panel, right-click on **Margin** and click **Format data**. 

  ![Margin menu with Format data highlighted.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_9.png "Lab3_Cognos_margin")

7. In the **Format type** list, select **Currency**.

 ![Format type menu with Currency highlighted.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_10.png "Lab3_Cognos_currency1")

8. Select **$ (USD) - United States of America, dollar** as the currency and click **OK** at the bottom.

 ![Currency menu with $ (USD) highlighted.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_11.png "Lab3_Cognos_currency2")

9. In the margin chart in Panel 2, select the title of the visualization and change it to *Average Margin*.
10. To save the current work in the dashboard, press **CTRL+S** or click **Save** in the main toolbar.

11. Your Panel 2 visualization should look similar to the one below:

  ![Panel 2 visualization with current Average Margin of $84.36 Margin.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_2.A.9.png "Lab3_cognos_2.a.3")
    
<br>

### Task B: Keep/Exclude Data Points from a Visualization
1. In the data source panel, expand CustomerLoyaltyProgram.csv if needed. Press the **CTRL** key and select **Revenue** and **Product Line** and drag them both to the center of **Panel 3**, releasing them once you see the drop zone turn blue.
2. From the data source panel, drag **Location Code** to the **Color** drop zone of **Panel 3**.

  ![Data source panel hightlights Location Code and points to the drop zone of Panel 3.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_2.B.2.png "Lab3_Cognos_2.B.2")
    
3. Right-click the **Suburban** data point in the Panel 3 visualization, and select **Exclude**.

  ![Data point menu with Exclude highlighted.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_2.B.3.png "Lab3_Cognos_2.B.3")
    
4. To save the current work in the dashboard, press **CTRL+S** or click **Save** in the main toolbar.
5. Your Panel 3 visualization should look similar to the one below:

 ![Panel 3 visualization current view.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_2.B.5.png "Lab3_Cognos_2.B.5")
    
<br>

### Task C: Set Top/Bottom on a Visualization
1. From the data source panel, press the **CTRL** key and select **Quantity Sold** and **City**, and drag them both to the center of **Panel 4**, releasing them once you see the drop zone turn blue.
2. Click the chart in Panel 4 to bring it into focus and render the on-demand toolbar.
3. Click the **Change visualization** button in the on-demand toolbar (which will currently say **Map**), then expand **All visualizations**, if needed, and select **Column**.
4. In Panel 4, right-click the axis label **Quantity Sold (Sum)** down the left side of the chart and select **Top or bottom**.

  ![Quantity Sold (Sum) menu with Top or bottom highlighted.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_2.C.4.png "Lab3_Cognos_2.C.4")
    
5. Ensure the value of **Number of results** is set to **10**, then select **Top count**.

  ![Top or bottom screen with 10 and Top Count highlighted.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_2.C.5.png "Lab3_Cognos_2.C.5")
    
6. In the column chart in Panel 4, select the title of the visualization and change it to *Top 10 Quantity Sold by City*.
7. To save the current work in the dashboard, press **CTRL+S** or click **Save** in the main toolbar.
8. Your Panel 4 visualization should look similar to the one below:

  ![Panel 4 visualization current view of Quantity Sold by City with bar graphs.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_2.C.8.png "Lab3_Cognos_2.C.8")
    
<br>

### Task D: Create and leverage navigation paths
1. In the data source panel on the left, scroll to the top of the list and click the **plus sign** labeled **Create navigation path** to the right of **Navigation paths**.

  ![Data source panel for CustomerLoyaltyProgram.csv file with Navigation paths plus sign highlighted.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_2.D.1.png "Lab3_Cognos_2.D.1")
    
2. In the **Create navigation path** dialog box, expand CustomerLoyaltyProgram.csv, if needed. Drag **Order Year**, **Quarter**, **Country**, and **City** sequentially to the right hand panel of the dialog box, maintaining the order (shown in the image below). Once done, click **OK**. 

![Create naviagation path dialog box with sequential items dragged to the right hand panel.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_2.D.2.png "Lab3_Cognos_2.D.2")
    
3. From the data source panel, press the **CTRL** key and select **Margin**, **Product Line**, and **Order Year** and drag them to the center of **Panel 5**, releasing them once you see the drop zone turn blue.
4. Click the line chart in Panel 5 to bring it into focus and render the on-demand toolbar.
5. Click the **Change visualization** button in the on-demand toolbar (which will currently say **Line**), then expand **All visualizations**, if needed, and select **Bar**.
6. In Panel 5, right-click the axis label **Order Year** down the left side of the chart, and select **Navigate**.

  ![Axis label menu wiht Navigate highlighted.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_2.D.6.png "Lab3_Cognos_2.D.6")
    
7. One by one, select the **Order Year**, **Quarter**, **Country**, and **City** options in the **Navigate** dialog box to view the different navigation paths and observe the resulting visualization in Panel 5 as you select each one. Lastly, keep the **Order Year** option selected.

  ![Product Line - Customer Name menu with Order Year selectd and Quarter with cursor.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_2.D.7.png "Lab3_Cognos_2.D.7")
    
8. <ins>Alternative interactive way with Drill down/back:</ins>
    - In the bar chart in Panel 5, right-click the **2016** - **Smart Electronics** bar of the bar chart, and select **Drill down**.

   ![2016 - Smart Electronics bar menu with Drill down highlighted.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_2.D.8.1.png "Lab3_Cognos_2.D.8.1")
		
    - Now right-click the **Q1** - **Smart Electronics** bar of the bar chart, and select **Back**.

   ![Q1 - Smart Electronics bar menu with Back selected.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_2.D.8.2.png "Lab3_Cognos_2.D.8.2")
        
9. To save the current work in the dashboard, press **CTRL+S** or click **Save** in the main toolbar.
10. Your Panel 5 visualization should look similar to the one below:

   ![Panel 5 visualization current view.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_2.D.10.png "Lab3_Cognos_2.D.10")
    
<br>

### Task E: Filter Data in the Current Tab
1. If required, click **Filters** in the **Dashboard Toolbar** to display the filters pane.

  ![Dashboard toolbar, Filters option.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_2.E.1.png "Lab3_Cognos_2.E.1")
    
2. From the data source panel, select **Product Line** and drag it to the **This tab** filter panel on the right hand side.

  ![Data source panel with Product LIne highlighted.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_2.E.2.png "Lab3_Cognos_2.E.2")
    
<br>

3. Click the **Product Line** filter tab of the **This tab** filter panel. Select **Computers and Home Office**, **Photography**, and **TV and Video Gaming**, then click **Done**.

    ![Product Line filter tab menu with selected options and OK button highlighted.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_2.E.3.png "Lab3_Cognos_2.E.3")
    
<br>

Your final dashboard should look similar to the one below. To save the current work in the dashboard, press **CTRL+S** or click **Save** in the main toolbar. 

 ![Final dasboard current view.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L3_2_final_dashboard.png "Lab3_Cognos_2.final")
 
Feel free to change the appearance and layout of the dashboard you have just created. 
<br>

<h3> Congratulations! You have completed this Lab<h3/>
	

# Author(s)
[Sandip Saha Joy](https://www.linkedin.com/in/sandipsahajoy/)

## Other Contributor(s) 
- [Steve Ryan](https://www.linkedin.com/in/stevelryan)
- [Dr. Pooja ](https://www.linkedin.com/in/p-b28802262)

<!---# Changelog
| Date | Version | Changed by | Change Description |
|------|--------|--------|---------|
| 2023-08-21 | 1.6  | Steve Hord | QA pass with edits |
| 2023-08-08 | 1.5  | Steve Ryan | ID review, updated screenshots, fixed steps/typos/markdown errors |
| 2023-08-03 | 1.4  | Dr. Pooja | Updated Screenshots|
| 2022-10-28 | 1.4  | Pratiksha Verma | Updated Screenshots|
| 2022-02-02 | 1.3  | Malika Singla | Updated Screenshots |
| 2021-06-18 | 1.2  | Malika Singla | Updated Screenshots |
| 2020-10-02 | 1.1  | Steve Ryan | ID review |
| 2020-09-24 | 1.0  | Sandip Saha Joy | Initial version created |-->

## <h3 align="center"> © IBM Corporation 2020. All rights reserved. <h3/>