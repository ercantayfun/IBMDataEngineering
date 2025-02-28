---
markdown-version: v1
tool-type: instructional-lab
branch: lab-7834-instruction
version-history-start-date: '2023-08-02T12:56:51Z'
audio-timestamp-of-request-to-generate-wav: '2024-10-26T02:03:08Z'
audio-file-url: https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/labs/v2/Hands-on_LabCreating_Dashboard_with_Cognos_Analytics.md.wav
locales-url: https://cf-courses-data.static.labs.skills.network/N-p5Yt8S1JRZJ5BZ_zzqlQ/Hands-on%20Lab-%20Creating%20Dashboards%20with%20Cognos-v1-locales.json
---
<center> <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/images/SN_web_lightmode.png" width="300" alt="cognitive.ai"> </center>

# Hands-on Lab: Different Methods for Creating Dashboard Visualizations with Cognos Analytics
**Estimated time needed:** 45 minutes

## Purpose of the Lab: 

This lab is meticulously designed to enhance skills in utilizing IBM Cognos Analytics for creating sophisticated dashboard visualizations. The primary objectives include working with tabs, initiating new dashboards within these tabs, and mastering different methods for crafting dashboard visualizations. The lab guides users through automatic and manual techniques for visualization creation, as well as leveraging Cognos Analytics Assistant for this purpose. The focus is on practical application, enabling users to navigate through various features of Cognos Analytics, such as employing various visualization styles (like radial charts and packed bubble charts), and understanding how to effectively use data to create meaningful and interactive dashboards. 

 

## Benefits of Learning the Lab: 

Participating in this lab provides invaluable benefits, particularly for those aspiring to excel in data analytics and visualization.You will gain hands-on experience in using IBM Cognos Analytics, a leading tool in the business intelligence domain. The skills acquired include creating diverse types of visualizations, understanding the application of different visualization methods, and effectively presenting data in an interactive and engaging manner. This knowledge is crucial for professionals in data analytics, marketing, business intelligence, and other fields that rely heavily on data visualization for decision-making and presentation purposes. The lab offers a robust foundation for those aiming to build or enhance their expertise in using advanced business intelligence software, thereby increasing their proficiency and employability in the rapidly evolving field of data analytics. 

## Software used in this lab
Like the videos in the course, for the hands-on labs, we will be using IBM Cognos Analytics trial version (currently limited to 90 or 30 days), as this is available at no charge.

## Dataset used in this lab
The dataset used in this lab comes from the VM designed to showcase IBM Cognos Analytics. This dataset is published by IBM. You can download the dataset file directly from here: [CustomerLoyaltyProgram.csv](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/CustomerLoyaltyProgram.csv)

## Objectives
After completing this lab, you will be able to:
- Work with tabs
- Start a new dashboard within tabs
- Use an automatic method to create a visualization
- Use Cognos Assistant to create a visualization
- Use a manual method to create a visualization

## Exercise 1: Work with tabs and start a new dashboard within tabs
In this exercise, you will learn how to work with tabs and start a new dashboard within tabs.

1. To sign in to the Cognos Analytics platform with your IBMid, go to [myibm.ibm.com/dashboard/](https://myibm.ibm.com/dashboard/?utm_source=skills_network&utm_content=in_lab_content_link&utm_id=Lab-IBMSkillsNetwork-DV0130EN-Coursera).
2. Enter your IBMid and password.
3. Scroll down and click **Launch**.

    ![Cognos trial window with Launch button highlighted.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/launch.png "Lab2_Cognos_Launch")
    
4. From the **Recent** section, double-click **Simple dashboard** to open it.

    ![IBM Cognos recent item selected.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L2_I1.PNG "Lab2_Cognos_recent")
    
5. Ensure that **Edit** is turned on in the top left corner. Then click the **Add new tab** button to the right of the **A - Product Sales** tab.

    ![Cognos Simple Dashboard with Add new tab button highlighted.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L2_I2.png "Lab2_Cognos_Add_Tab")
    
6. Select the **four-panel template with 2x2 configuration**. Click **Create**.
![Cognos template site with four-panel template highlighted and Create button.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L2_I3.PNG "Lab2_Cognos_template")

7. Click the tab named **Tab 1** and select **Edit the title**. Rename the tab to **B - Customer**.

    ![Cognos Tab 1 menu with Edit the title highlighted.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L2_I4.png "Lab2_Cognos_rename")
    
<br>

## Exercise 2: Differentm methods for creating dashboard visualizations
In this exercise, you will learn different methods for creating dashboard visualizations.

- As you build the dashboard, the location placement for widgets in the dashboard template will be referenced using the following panel numbers

    ![Cognos template1 with four panels labeled 1, 2, 3, and 4.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/2.1.png "Lab2_Cognos_template1")
    
<br>

### Task A: Using an automatic method to create a visualization for panel 1
1. From the **Navigation** panel, select **Sources** to open the data source panel if it is not already open. The data source panel displays the uploaded file **CustomerLoyaltyProgram.csv** as the selected source.

   ![Navigation panel with Sources icon highlighted.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/3.C.2.New.png "Lab2_Cognos_3_C_2_new")
    
2. From the data source panel, expand CustomerLoyaltyProgram.csv if needed.
3. From the data source panel, press the **CTRL** key, select **Latitude**, **Longitude**, and **Quantity Sold** and drag them to the center of **Panel 1**, releasing them once you see the **drop zone turn blue**.

  ![Data source panel with highlighted Latitude, Longitude, and Quantity Sold and red arrows pointing to panel location to drag them.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/2.A.3.png "Lab2_Cognos_2.A.3")

   The map will look like the following:
   
  ![Cognos map.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L2_I5.png "Lab2_Cognos_map")
   
4. Click the map chart in Panel 1 to bring it into focus.
5. To change the map style, open the **Properties** panel and expand **Chart** to see the various options of maps available.

  ![Step 1, select the Map, Step 2, click Properties, and step 2, click the Chart all highlighted and labeled.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L2_I6.png "Lab2_Cognos_properties")
    
6. In the **Map base** list, select **Streets**.

![Map base list highlights Streets.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/Streets.png "Lab2_Cognos_Streets")

7. Open the **Fields** panel to view the data slots. From the data source panel on the left of the screen, drag and drop **Country**, **Province or State**, and **Revenue** into the **Locations**, **Locations**, and **Location color** data slots of the **Regions** section of the Fields panel respectively.

   ![Fields panel highlights Location and Location color where you drag the mentioned items.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/2.A.5.1.png "Labs_Cognos_fields")
    
8. Expand the **Latitude/longitude** section of the Fields panel.

9. Ensure that **Quantity Sold** is in the **Point color** data slot of the **Latitude/longitude** section of the Fields panel.

    ![Fields panel highlights the Point color with Quantity Sold.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/2.A.6.png "Labs_Cognos_fields_2")
    
10. Click the **Fields** button to close the fields panel.
11. Click the map chart widget in Panel 1 to bring it into focus if needed. Select the title of the visualization and change it to *Revenue and Quantity Sold by Location*.
12. Click the **Properties** button in the top right corner to open the **Properties** panel and click the **General** tab. Expand **Appearance**, click **Border color** to open the color options for borders, and select a black border.

![Properties link, General tab, Appearance menu, Fill color, and Border color are highlighted.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L2_I8.png "Lab2_Cognos_Border")

13. To save the current work of the dashboard, press **CTRL+S** or click the **Save** icon in the toolbar.

14. Ensure that the **Regions** section has the correct fields in the relevant data slots as per the image in step 7 above.

15. Your Panel 1 visualization should look similar to the one below:

  ![Panel 1 visualization shows world map with countries.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/2.A.12.New.png "Lab2_Cognos_final_dashboard1")
    
You can also change the visualization color palette as below:

 ![Visualization properties highlights Properites link, Visualization tab, Regions layer menu, and Change heat palette button.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L2_I9.png "Lab2_Cognos_visuals")
 
For instance, in the below image, we have selected a Magenta palette.
 
 ![North America continent with Magenta palette highlighted.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L2_20.png "LAb2_Cognos_visuals_1")

<br> 

### Task B: Using an automatic method to create a visualization for panel 2
1. From the **Navigation** panel, click **Visualizations** and then select **Radial** chart from the visualizations.

  ![Navigation panel, highlighte Visualization and Radial chart.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L2_21.png "Lab2_Cognos_Radial")
    
2. Click the **Fields** button on the dashboard toolbar to open the **Fields** panel.
3. Drag and drop **Product Line** to the **Repeat (column)** data slot.

    ![Fields panel with Fields button highlighted.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/2.B.5.png "Lab2_Cognos_Fields_3")


4. Next, drag **Coupon Response** to the **Color** data slot. Also, drag **Coupon Response** to the **Bars** data slot, and then drag **Quantity Sold** to the **Length** data slot. 
5. Click the **Fields** button to close the Fields panel. 
6. Click the radial chart widget in Panel 2 to bring it into focus if needed. Select the title of the visualization and change it to *Product Line by Product Line and Coupon Response colored by Coupon Response*.
7. Click the **Properties** button in the top right corner to open the **Properties** panel and click the **General** tab. Expand **Appearance**, click **Border color** to open the color options for borders, and select a black border.
8. To save the current work of the dashboard, press **CTRL+S** or click the **Save** icon in the toolbar.
9. Your Panel 2 visualization should look similar to the one below:

 ![Final visualization for Quantity Sold and Unit Cost by City chart for cities around the world.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/panel2.png "Dashboard_panel2")
    
<br>

### Task C: Using Cognos Assistant to create a visualization for panel 3
1. From the Cognos Analytics main toolbar at the top right of the screen, click the **Assistant** icon to open the **Cognos Assistant** panel.

![Cognos Analytics toolbar with Assistant icon highlighted.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L2_23.png "Lab2_Cognos_assistant")
	
2. In the **Ask a question** input text box, at the bottom of the right hand pane, type *show Quantity Sold and City* and press **Enter** or click the **Ask question** arrow.
    
   ![In Cognos Assistant, the Ask a question box shows show Quantity Sold and City highlighted.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L2_24.png "Lab2_Cognos_assistant1")
    
It will show you visualizations created automatically based on your question as below: 

![Newly created visualization shows results from the question you asked.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/L2_251.png "Lab2_Cognos_assistant2")

3. Scroll down the pane and click **Show related visualizations**.
    
    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%205%20-%20Different%20Methods%20for%20Creating%20Dashboard%20Visualizations%20with%20Cognos%20Analytics/images/2.C.4.New.png" width="350" alt="Cognos Assistant with Show related visualizations highlighted in red">
    
4. Select the second chart visualization.

   ![Cognos Assistant with second chart visualization icon highlighted in red.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/Assistant_1.png "Lab2_Cognos_Assistant_1")

5. From the **Cognos Assistant** panel, select the second chart visualization and drag it to the center of **Panel 3**, releasing it once you see the **drop zone turn blue**.

   ![Cognos Assistant shows the second chart visualization chart dragged to panel 3 with a red line.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/Assistant_2.png "Lab2_Cognos_Assistant_2")
  
6. Click the **Quantity Sold and Unit Cost by City** chart in **Panel 3** to bring it into focus if needed.
7. Open the **Properties** panel and click the **General** tab. Expand **Appearance**, click **Border color** to open the color options for borders, and select a black border.
8. To save the current work of the dashboard, press **CTRL+S** or click the **Save** icon in the toolbar.
9. Your Panel 3 visualization should look similar to the one below:

   ![Final panel 3 with the new visualization chart for Quantity Sold and Unit Cost by City.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/Assistant_3.png "Lab2_Cognos_Assistant_3")
  
<br>

### Task D: Using a manual method to create a visualization for panel 4
1. From the **Navigation** panel, select **Visualizations** to open the visualizations library.

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%205%20-%20Different%20Methods%20for%20Creating%20Dashboard%20Visualizations%20with%20Cognos%20Analytics/images/2.D.1.New.png" width="400" alt="Navigation panel with Visualizations highlighted.">
    
2. Select the **Packed Bubble** chart from the list.
3. The packed bubble chart visualization will be added to Panel 4 of the dashboard template, and its **Fields** panel will be open, ready for you to set up the data definitions for your visualization.

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%205%20-%20Different%20Methods%20for%20Creating%20Dashboard%20Visualizations%20with%20Cognos%20Analytics/images/2.D.2.New.png" width="665" alt="Packed bubble chart visualization is added to Panel 4 with Fields panel open.">
    
4. From the data source panel on the left of the screen, drag and drop the **Product Line**, **Quantity Sold**, and **Loyalty Status** sources into the **Bubbles**, **Size**, and **Color** data slots of the Fields panel respectively.

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%205%20-%20Different%20Methods%20for%20Creating%20Dashboard%20Visualizations%20with%20Cognos%20Analytics/images/2.D.3.New.png" width="630" alt="Data source panel with highlighted Product Line, Quantity Sold, and Loyalty Status.">
    
5. Click the **Fields** button to close the panel.
6. Click the packed bubble chart visualization in Panel 4 to bring it into focus. Select the title of the visualization and change it to *Department Sales by Loyalty Status*.
7. Open the **Properties** panel and click on the **General** tab. Expand **Appearance**, click **Border color** to open the color options for borders, and select a black border.
8. To save the current work of the dashboard, press **CTRL+S** or click the **Save** icon in the toolbar.
9. Your Panel 4 visualization should look similar to the one below:

   ![Manual method visualization Department Sales by Loyalty Staus bubble chart](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/Assistant_4.png "Lab2_Cognos_Assistant_4")

 
Finally, your dashboard **B - Customer** should look similar to the one below:

   ![Your final Dashboard B - Customer with four panels.](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DV0130EN-Coursera/images/B_customer_dashboard.png "Lab2_Cognos_B_Customer_Dashboard")

   
<br>

<h3> Congratulations! You have completed this lab, and you are ready for the next topic. <h3/>

## Author(s)
- [Sandip Saha Joy](https://www.linkedin.com/in/sandipsahajoy/)

### Other Contributor(s) 
- [Steve Ryan](https://www.linkedin.com/in/stevelryan)
- [Dr. Pooja](https://www.linkedin.com/in/p-b28802262/)
<!--
## Changelog
| Date | Version | Changed by | Change Description |
|------|--------|--------|---------|
| 2023-08-18 | 1.8  | Steve Hord | QA review with minor edits |
| 2023-08-07 | 1.7  | Steve Ryan | Peer review - updated screenshots, fixed markdown tags/typos|
| 2023-08-02 | 1.6  | Dr. Pooja | Updated screenshots included Appearance and visual effects|
| 2023-07-11 | 1.5  | Pooja Patel | Updated screenshots and Instruction|
| 2022-10-28 | 1.4  | Pratiksha Verma | Updated screenshots|
| 2021-06-18 | 1.3  | Malika Singla | Updated screenshots |
| 2020-09-23 | 1.2  | Steve Ryan | Post review changes |
| 2020-09-21 | 1.1  | Steve Ryan | ID review |
| 2020-09-17 | 1.0  | Sandip Saha Joy | Initial version created |
-->

## <h3 align="center"> © IBM Corporation 2020. All rights reserved. <h3/>
