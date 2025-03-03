---
markdown-version: v1
tool-type: instructional-lab
audio-timestamp-of-request-to-generate-wav: '2024-10-29T19:25:32Z'
audio-file-url: https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/btneZVguq47djsHHWLhGRg/Advanced-Dashboard-Capabilities%E2%80%AFin-Google-Looker-v1.md.wav
locales-url: https://cf-courses-data.static.labs.skills.network/o1RsTj0Sb0A3kLhFk1wg5Q/Advanced-Dashboard-Capabilities%E2%80%AFin-Google-Looker-v1-locales.json
---
# Hands-on Lab: Advanced Dashboard Capabilities in Google Looker Studio

**Estimated time needed:** 60 minutes

## Purpose of the lab:
This hands-on lab focuses on enhancing skills in utilizing advanced features of Google Looker Studio to create dynamic and interactive dashboards. It covers creating calculated fields, manipulating data points within visualizations, applying filters, and constructing navigation paths. This lab provides hands-on experience aimed at leveraging Google Looker Studio for complex data analysis and visualization tasks.

## Software used in this lab:
Google Looker Studio, available for free.

## Data set used in this lab:
Use data set [CustomerLoyaltyProgram.csv](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/bXn-QnrBL0Uv_nAaMVWgpw/CustomerLoyaltyProgram%20.csv "CustomerLoyaltyProgram.csv").

## Objectives:
1. Start a new dashboard
2. Use advanced Google Looker Studio dashboard capabilities
3. Create a bar chart using Drill Down 
4. Create another bar chart to implement top/bottom filtering in visualizations
5. Create a horizontal bar chart using Drill Down and a calculated field
6. Create a pie chart
7. Add headings to all the created charts in the dashboard
8. Build an interactive dashboard
9. Save the dashboard and download as a PDF


# Step-by-step instructions

1. **Starting a new dashboard**
	a. Sign in to Google Looker Studio:
	- Go to Google Looker Studio and sign in with your Google account.
		
	b. Access the data set
	- Here you are going to use the same data set that you have used in the previous lab and follow the same steps to upload the file.
	- In the top left corner, click **Create**, then select **Data source**.
	- In the **Search** box, type *file upload*, then click the **File Upload** connector.
	- Click the **CLICK TO UPLOAD FILES** button, select the **CustomerLoyaltyProgram.csv** file, and click **Open**.
	- Once the data is uploaded, click **CONNECT**.

	![CustomerLoyaltyProgram.csv dataset](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/mzGSXG9vyEALK3SxzgjDkg/Advanced-Lab-Fig%200.png "CustomerLoyaltyProgram.csv dataset")

	c. Create and add the report
	- To start creating the report, click **CREATE REPORT**.
	- In the pop-up dialog box, click **ADD TO REPORT**.

	![Add data to report](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/Z7xNUKltE7vl9_sybXJ5gw/Advanced-Lab-Fig%201.png "Add data to report")
	
	d. Save the new report
	- Click the untitled report at the top and rename it to *Advanced Dashboard*.
	- Save the new report.

2. **Working with advanced Google Looker Studio dashboard capabilities**
	a. Create calculations
	- In your Data Source, click **+ ADD A FIELD**.
	- Then select **Add calculated field**.
	
	![Add calculated field](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/gRkVFXJKzT7LrZ01QK34Wg/Advanced-Lab-Fig%202.png "Add calculated field")
	
	- Define the calculation for Margin as **Unit Sale Price - Unit Cost**.
	
	![Margin calculation](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/mUGB-J0MGqf_hlMtPSRGgQ/Advanced-Lab-Fig%203.png "Margin calculation")
	
	- Name the field **Margin** and save it.
		
	b. Set up filters and control widgets
	- Add filter controls.
	- From the toolbar, select **Add a control** and choose a drop-down list or slider based on the type of filter you need, such as **City**.
	
	![Add a filter control](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/thrVidrnI93XYxo5ctg8cw/Advanced-Lab-Fig%204.png "Add a filter control")
	
	- Position the filter control on the dashboard.

	c. Add score cards
	- Now you will include two scorecards to display *Margin* and *Revenue* on the top of your dashboard.
	- In the toolbar, click **Add a chart**, and select **Scorecard**.
	- Move it above the line chart visualization and to the left side of the canvas.
	- And pick **Margin** to be displayed on this scorecard.
	- In the Chart – Set Up area, click the left side of the **Margin** field and then you will see the following dialog box.  
	- Select the data type and aggregation.
	
	![Scorecard - data type and aggregation](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/BerexUOejqyb2CZeNiFubg/Advanced-Lab-Fig%204A.png "Scorecard - data type and aggregation")
	
	- You can change the size and position as you like.
	- Use the **STYLE** tab in the scorecard chart\'s **Properties** pane to change the color and change the font size to **28pt** and then select **Background and Border**.
	
	![Scorecard - Style tab](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/peE0c-wQgVmCtK7U-Pp7MA/Advanced-Lab-Fig%204B.png "Scorecard - Style tab")
	
	- Now you will add the second scorecard chart above the line chart.
	- In the toolbar, click **Add a chart**, and select **Scorecard**.
	- Place it to the right of the **Revenue** scorecard chart.
	- Select the data type and aggregation.
	- Then use the same size and style as **Margin**.
	
	![Scorecards and charts in Dashboard](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/nf9fKqm0hPha_vf6Rm2x8Q/Advanced-Lab-Fig%205.png "Scorecards and charts in Dashboard")
	

3. **Creating a bar chart**
	a. Create a bar chart (Revenue By Product Line By Location Code) using Drill Down
	- Add a bar chart to your dashboard.
	- Then drag the **Product Line** field to **Dimensions** (in the SET UP area)
	- Then drag the **Location Code** field to **Breakdown Dimension**
	- Then drag the **Revenue** field to **Metric** (change it to Average)
	
	![Create bar chart](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/ljFH7Xvn_Ev4rCbohEhbVQ/Advanced-Lab-Fig%206.png "Create bar chart")
	

	b. Exclude data points from the visualization
	- Add a filter in the **Location Code**
	
	![Filter on Location Code](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/7sdRuSMD2cmd6DrUX_3Mzg/Advanced-Lab-Fig%207.png "Filter on Location Code")
	
	- And exclude **Suburban**
	
	![Exclude Suburban](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/mapxLLZs5lvkUrbaxsvVbw/Advanced-Lab-Fig%208.png "Exclude Suburban")
	

4. **Creating another bar chart to implement top/bottom filtering in visualizations**
	- Add a bar chart to your dashboard.
	- Sort the data in the chart\'s data properties
	- Limit the number of bars to show top 10
	- Then drag the **City** field to **Dimensions** (in the SET UP area)
	- Then drag the **Quantity Sold** field to **Metric**
	
	![Top 10 bar chart](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/WCB2GmkdF2ToD3-_IJll3g/Advanced-Lab-Fig%209.png "Top 10 bar chart")
	

5. **Creating a horizontal bar chart (Margin By Order Year Colored By Product Line) using Drill Down**
	- Add a horizontal bar chart to your dashboard
	- Then drag the **Order Year** field to **Dimensions** (in SET UP area)
	- Then drag the **Product Line** field to **Breakdown Dimension**
	- Then drag the **Margin** calculated field to **Metric**
	
	![Horizontal bar chart with Drill Down](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/lJb8hwLfDH3lflk1EEuChg/Advanced-Lab-Fig%2010.png "Horizontal bar chart with Drill Down")
	

6. **Creating a pie chart of Loyalty Status Distribution**
	- Add a pie chart to your dashboard
	- Then drag the **Loyalty Status** field to **Dimensions** (in the SET UP area)
	- Then drag the **Loyalty#** field to **Metric**
	
	![Pie chart - Loyalty Status](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/rCEFhlPo9kfqTHix6ibCfw/Advanced-Lab-Fig%2011.png "Pie chart - Loyalty Status")
	

7. **Adding headings to all the created charts in the dashboard**
	- On the top of each chart, add a text box and enter the heading and use the text properties to make the text bold and fill it with color and provide a boundary.
	
	![Chart headings in Dashboard](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/At88omr4SwspDnKlvjW6RA/Advanced-Lab-Fig%2011A.png "Chart headings in Dashboard")
	

8. **Building an interactive dashboard**
	- Filter data in the current tab (selecting a city)
	
	![Filter data - City](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/DyKDdY9sgJZlcITeyIRdLA/Advanced-Lab-Fig%2012.png "Filter data - City")
	
	- Filter data in the current tab (selecting a product line)
	
	![Filter data - Product Line](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/Gt8RMPajm1HLD2inOJdN8g/Advanced-Lab-Fig%2013.png "Filter data - Product Line")
	

9. **Saving the dashboard and downloading as a PDF**
	- Finalize the dashboard.
		- Ensure all visualizations are correctly configured and aligned.
		- Preview the dashboard in **View** mode to check interactivity and finalize the design.
	- Save the dashboard.
	- Download as a PDF (you can also share your PDF).
	
<br>

Congratulations! You have completed this lab and are ready for the next topic.



## Author(s)
Shubhra Das 
 

### Other Contributor(s) 
Jyothi Mani, Steve Ryan

<!--
## Changelog
| Date | Version | Changed by | Change Description |
|------|--------|--------|---------|
| 2024-05-20  | 0.1  | Steve Ryan  | Initial version created in AWB |
|   |   |   |   |
|   |   |   |   |
-->


