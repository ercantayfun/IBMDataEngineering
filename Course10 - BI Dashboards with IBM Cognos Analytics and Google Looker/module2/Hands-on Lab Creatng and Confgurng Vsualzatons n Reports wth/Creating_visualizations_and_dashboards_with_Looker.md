---
markdown-version: v1
tool-type: instructional-lab
branch: lab-8237-instruction
version-history-start-date: '2023-09-17T18:14:54Z'
audio-timestamp-of-request-to-generate-wav: '2024-10-26T02:05:42Z'
audio-file-url: https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/labs/v2/Creating_visualizations_and_dashboards_with_Looker.md.wav
locales-url: https://cf-courses-data.static.labs.skills.network/9GCk9M5lvh6zruEav-FL5A/Creating%20Visualizations%20and%20Dashboards%20with%20Looker-v1-locales.json
---
<center> <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/images/SN_web_lightmode.png" width="300"> </center>

# Hands-on Lab : Creating and Configuring Visualizations in Reports with Looker Studio 
**Estimated time needed:** 60 minutes

In this lab, you will learn how to include more pages in a report, and how to join multiple data rows from multiple tables to create a blended data scource. Then you will learn how to add controls and filters to your visualizations to enhance a report\'s interactivity, and how to add different types of chart visualizations to your reports.

# Software Used in this Lab
Like the videos in the course, for the hands-on labs we will be using Google\'s **Looker Studio** as this is available at no charge.

# Dataset Used in this Lab
The dataset used in this lab comes from the VM designed to showcase IBM Cognos Analytics. This dataset is published by IBM. You can download the dataset file directly from here: [CustomerLoyaltyProgram.csv](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/CustomerLoyaltyProgram.csv)

# Objectives
After completing this lab, you will be able to:
- Configure page settings and add new pages
- Blend data from multiple tables and create a bar chart
- Add a drop-down list control and filters to a visualization
- Add a bubble map, a heatmap, and a treemap

# Exercise 1: Configure page settings and add new pages

### Task 1: Configure page settings

In this exercise, you will learn how to change the page settings and add new pages to your report.

1. Right click on the canvas and click **Current Page Settings**.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/1.png)

You will see that the properties for the page are displayed in the **Current Page Settings** tab in the right panel.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/2.png)

2. Click the **STYLE** tab, select the **Page background** drop-down arrow and select a **pale blue** background color. From here, you can also choose a specific Theme color, or choose a custom gradient color.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/2_1_lab2.png)

3. Under **Canvas Size**, click the drop-down arrow and select **Screen (16:9) - Landscape**. Note the width and height dimensions change.

4. Click the drop-down arrow again and select **Auto** to change it back to the original default size.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/3.png)

### Task 2: Add new pages

1. In the toolbar, click **Add page** to add a new page to your report.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/4.png)

A new page will be displayed and on the left side panel.

2. You can switch between the pages by clicking on the page numbers in the left pane. Click page **1**, then click page **2**. 

3. Click the toolbar button that says **Page 2 of 2**. This is the **Manage pages** option. 

Notice that the **Report Pages** properties panel opens and shows both pages, and in this case note that neither of these pages is titled.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/5.png)


Let\'s update the page titles for both of the pages as *A - Product Sales* and *B - Customer* respectively.

4. To do this, click on the ellipsis button next to each one (the vertical three dots) and click **Rename**.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/6.png)

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/7.png)

You can also toggle between pages from here as well.

# Exercise 2: Blend data from multiple tables and create a bar chart

In most cases the data you want to visualize is not available in one table. Instead it is available in multiple tables. In such cases you will need to relate these tables and fetch relevant data for creating your reports and dashboards.

In this case let\'s consider you have two tables - one with customer details such as *name*, *full name*, *gender*, *loyalty number* and *customer_ID* and another table with details on the customer loyalty program, such as *cust_ID*, *Income*, *Order Year*, *Quarter*, *MonthsAsMember*, *LoyaltyStatus*, *Product Line*, *Quantity Sold*, *Unit Sale Price*, *Unit Cost*, *Revenue*, and *Customer Lifetime Value*.

Now if you want to find out **Total quantity sold for Males and Females**, you will need to use both the tables. You can easily perform this task using the blending data functionality.


Blending data in Looker Studio involves creating relationships between different datasets and then using those relationships to create combined queries and reports.
<br>**NOTE:** Two subdatasets have been created from the CustomerLoyaltyProgram.csv to perform this exercise. You can download them from here:
[*cust_loyalty_table.csv*](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/labs/v2/cust_loyalty_table.csv "*cust_loyalty_table.csv*")
[*cust_table.csv*](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/labs/v2/cust_table.csv "*cust_table.csv*")

1. In the toolbar, click **Add data**.

2. On the **Connect to data** page, select the **File Upload** connector, click **CLICK TO UPLOAD FILES**.

3. Browse to the folder where the files are located, select [*cust_loyalty_table.csv*](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/labs/v2/cust_loyalty_table.csv "*cust_loyalty_table.csv*") and click **Open**.

4. Once the *Status* updates to **Uploaded** for the first file, click **Add**, and then click **ADD TO REPORT**. 

5. Repeat steps 1 to 4 to upload and add the [*cust_table.csv*](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/labs/v2/cust_table.csv "*cust_table.csv*") file also.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/8.png)

6. In the toolbar, click **Resource**, and then click **Manage added data sources**. 

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/9.png)

Here you can edit the data source and verify or modify the type of data attributes in the data if required.

7. Click **EDIT** for the **cust_table.csv** data source.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/10.png)

8. You don\'t need to make any modifications in this case, so click **DONE** to close the window, then close the **Data sources** window.

Let\'s now add a bar chart to display the quantity sold by gender.

9. In the left pane, ensure that page **2** is selected.

10. Click **Add a chart**, in the **Bar** section, select the **Column chart** and position it on the canvas at the top left and left-click to place it there.

Looker Studio has picked the data table automatically, which you can ignore for now.

11. In the **Chart** properties pane, click **BLEND DATA**, and close the pop-up window that opens.

Notice that Table 1 is picked automatically by Looker Studio, but you will change it.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/11.png)

12. In the *Table 1 (Table Name)* drop-down menu, select **cust_loyalty_table.csv**, drag **Cust_ID** to the **Dimension** field, drag **Quantity Sold** to the **Metric** field to replace *Record Count*, and then click **Join another table**.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/12.png)

13. For the second table select **cust_table.csv** as the table name for Table 2, and **Cust_ID** should already be in the first **Dimension** field.

14. Drag **Gender** to the *Add dimension* field under **Dimension**. So, you should now have both **Cust_ID** and **Gender** listed under **Dimension**.

15. Click **Configure join**. 

16. In the **Join configuration** window that opens, select the **Left outer** join, accept **Cust_ID** as the default join condition, and then click **Save**.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/13.png)

17. Once the join is configured, click **SAVE**.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/14.png)

18. Once the data has been blended, select the updated chart on page **2** to open the **Chart** properties pane.

19. From the **Data** pane on the right, drag **Gender** to **Dimension** in the **Chart** properties pane, to replace *Quantity Sold*.

20. Leave **Quantity Sold** in the **Metric** and **Sort** fields, and your bar chart will update.

Once your chart has finished updating, it should look similar to the image below.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/15.png)

By default, Looker Studio will pick *SUM* as the metric for **Quantity Sold**, but you can change it if required.

21. Under **Metric**, click **SUM** next to **Quantity Sold**, and select **Average** from the list. The chart will update accordingly.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/16.png)

You can also display the metric sorted in ascending or descending order by selecting the relevant radio button under the **Sort** section of the **SETUP** tab in the **Chart** properties pane.

22. Under **Sort**, select **Ascending** and the chart will update accordingly to display *male* before *female*.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/16-1.png)

## Exercise 3: Add a drop-down list control and filters to a visualization

### Task 1: Add a drop-down list control
For the bar chart you created in exercise 2, you will now include a drop-down control to enable users to choose the gender from to display the quantity sold.

1. In the toolbar, click **Add control** and select **Drop-down list**.

2. Place it on the right of the chart.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/18.png)

3. Once the control has updated, click on it to see its appearance.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/19.png)

### Task 2: Add filters

1. In the main menu, click **Page**, and then click **New page**. 

2. In the toolbar, click **Add a chart**, then from the **Line** section, select the **Combo chart** and place it on the top left of the canvas. 

3. In the **SETUP** tab of the **Chart** properties pane, remove the existing data source, and then click **Select Data Source**.

4. Select **CustomerLoyaltyProgram.csv** as the data source.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/20.png)

5. From the data pane, drag **City** to **Dimension** to replace *Gender*.

6. From the data pane, drag **Unit Sale Price** and **Revenue** to **Metric** to replace *Record Count* and *Quantity Sold*.

7. From the data pane, drag **City** to **Sort** to replace *Unit Sale Price*.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/21.png)

Now you\'ll add a filter to this chart. First you will add a filter for the order year. 

8. Select the chart on the canvas and from the **Filter** section of the **Chart** properties pane, click **ADD A FILTER**.

9. In the **Select a field** drop-down list, select **Order Year**, in the **Select a condition** drop-down list, select **Equal to (=)**, then in the **example 1** drop-down list, enter **2016**.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/22.png)

10. Click **SAVE**.

When your chart updates, it should look similar to the image below.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/22-1.png)

Now you\'ll exclude a country from the visualization by using a filter.

11. Select the chart on the canvas and from the **Filter** section of the **Chart** properties pane, click **ADD A FILTER**, and then click **CREATE A FILTER**.

12. In the **Include** drop-down list, select **Exclude** instead, in the **Select a field** drop-down list, select **Country**, in the **Select a condition** drop-down list, select **Equal to (=)**, then in the **example: value** drop-down list, enter **Canada**.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/23.png)

13. Click **SAVE**.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/23-1.png)

*Note: These filters can be used by the report maker and are not visible to the user.*

Now you will provide a control to the report viewer, so that they can select the product line for this chart.

14. In the toolbar, click **Add a control**, select **Fixed-size list** and place it above the combo chart.

15. In the **Control** properties pane on the right, from the **Data** field, drag **Product Line** to **Control field** and drag **Revenue** to **Metric**. 

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/24.png)

Now the user can easily find out unit cost and revenue based on different product line categories by City.

16. In the top right of the page, click **View** to see how this control will appear for the end user. 

17. In the control, select the checkbox for **Smart Electronics** only, then hover over the chart to view the different values for different cities. In the image below, the values of unit sale price and revenue are shown for the city of *Norwalk*.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/25.png)

Feel free to create different charts and include more controls.

## Exercise 4: Add a bubble map, a heatmap, and a treemap
### Task 1: Add a bubble map

You can display the quantity sold per country with the help of a Google Maps chart. 

1. In the main menu, click **Page**, and then click **New page**.

2. On page **4**, in the toolbar, click **Add a chart**, in the **Google Maps** section, select **Bubble map** and position it on the canvas. 

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/26.png)

Looker Studio will automatically pick *Country* as the **Location**. 

3. From the data pane, drag **City** to **Location** to replace *Country*.

4. From the data pane, drag **Quantity Sold** to the **Size** metric.

Your bubble chart should look similar to the image below.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/26-1.png)

5. From the data pane, drag **Product Line** to **Color dimension** and notice the change in the bubbles in your chart.

6. In the bubble chart, either use your mouse wheel or the **+** button to zoom in towards **Florida**, and hover over the blue outside ring on **Miami** and see the value for the *Computers and Home Office* product line. Then hover over the central orange circle and see the value for the *Kitchen Appliances* product line.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/26-2.png)

7. Zoom back out.

Now you will add a control to the map as a slider to display the *Order Year*. 

8. In the toolbar, click **Add a control**, select **Slider** and position it to the right of the bubble map chart.

9. Select the new control and from the **Data** pane, drag **Order Year** to **Control field** in the **Control** properties pane on the right to replace *Loyalty*.

10. In the top right of the page, click **View** to see how this control will appear for the end user. Users will be able to choose a year range on the slider to see the quantity sold in various cities.

11. In the **Order Year** slider control, drag the left end of the slider to the right to show only from **2017** up to **2020**.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/26-3.png)

12. In the top right of the page, click **Edit** to revert to edit mode.

### Task 2: Add a Heatmap

1. In the toolbar, click **Add a chart**, in the **Google Maps** section, select **Heatmap**, and position it under the bubble map chart.

Looker Studio will automatically select *Country* as the **Location**, but you will change it.

2. From the data pane, drag **City** to **Location** to replace *Country*.

3. From the data pane, drag **Quantity Sold** to the **Weight** metric.

Your heatmap should look similar to the image below.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/27.png)

4. Click the **SETUP** tab.

5. Under **Background Layer**, select **Satellite**. 

Here you could also modify other aspects of the heatmap\'s appearance, such as layer type (Heatmap is selected for this map), heatmap layer aggregation, intensity, colors, map controls, and the legend parameters.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/27-1.png)

6. In the top right of the page, click **View** to see how this control will appear for the end user. Users will be able to zoom in and out on the map.

7. Use the **+** and **-** buttons, or your mouse wheel, to zoom in and out on the heatmap.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/27-2.png)

8. In the top right of the page, click **Edit** to revert to edit mode.

**NOTE:** Here we used a geographical Google Maps chart as a heatmap, but there are also options in Looker Studio to create tables and pivot tables with a heatmap, so you could try using them as well.

### Task 3: Add a Treemap

1. In the toolbar, click **Add a chart**, scroll down and select **Treemap**, and position it to the right of the heatmap.

2. Ensure that **Country** is selected as the **Dimension** and **Quantity Sold** is configured as the **Metric**. If they are not, then drag the relevant data fields to those locations in the **Chart** properties pane.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/28.png)

Now you will add some more dimensions to represent hierarchy in the treemap.

3. From the data pane, drag **Province or State** to **Dimension** under *Country*.

4. From the data pane, drag **City** to **Dimension** under *Province or State*.

You can toggle the **Drill down** button to show the country, province, or city levels.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/28-1.png)

You can also add an optional metric to the treemap chart. 

5. In the **Chart** properties pane, under **Metric**, select the **Optional metrics** toggle switch.

6. From the **Data** pane, drag **Revenue** to **Optional metrics**.

The menu above the chart will show the options to be selected by the user to display the relevant metric. 

7. In the top right of the page, click **View** to see how this control will appear for the end user. Users will be able to view the optional metrics in the treemap.

8. Above the treemap, click the **Optional metrics** icon, then select **Revenue**. 

9. Hover over the treemap to view the revenue values for each province.

![](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/28-2.png)

<h3> Congratulations! You have completed this Hands-on Lab<h3/>
	
For more help, you can refer to the [Tutorial on Looker Studio by Google](https://support.google.com/looker-studio/topic/9170843?hl=en&ref_topic=12398462 "Tutorial on Looker Studio by Google")

## Author(s)
[Dr. Pooja](https://www.linkedin.com/in/p-b28802262 "Dr. Pooja")

<!--
# Changelog
| Date | Version | Changed by | Change Description |
|------|--------|--------|---------|
| 2023-09-21 | 1.0  | Dr. Pooja | Initial version created |
| 2023-09-22 | 1.1  | Steve Ryan | ID review and edit |
| 2023-09-25 | 1.2 | Mercedes Schneider | QA review w/edits |
| 2023-09-25 | 1.3  | Dr. Pooja | Included notes on metric on both axis and heatmap  |
| 2023-09-27 | 1.4  | Steve Ryan | Second ID pass and title change |
