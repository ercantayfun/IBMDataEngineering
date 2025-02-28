---
markdown-version: v1
tool-type: instructional-lab
branch: lab-2959-instruction
version-history-start-date: '2022-12-20T10:29:02Z'
audio-timestamp-of-request-to-generate-wav: '2024-10-26T01:57:53Z'
audio-file-url: https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/instructions.md.wav
locales-url: https://cf-courses-data.static.labs.skills.network/_Kd1-GyWuG_Gr3jfGXT3DA/instructions-v1-locales.json
---
<center> <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/images/SN_web_lightmode.png" width="300"> </center>

# Hands-on Lab 4: Getting Started with Cognos Analytics
**Estimated time needed:** 40 minutes

IBM Cognos Analytics is an AI-fueled business intelligence platform that supports the entire data analytics cycle, from discovery to operationalization. It provides users with data discovery capabilities to visually explore and interact with their data to identify the key insights for improving data driven decisions. Users can perform data discovery and then quickly assemble that information into interactive, visually appealing dashboards; all without the need of formal training.

In this lab, first you will learn how to sign up for IBM Cognos Analytics trial plan, and learn general navigation around the Cognos Analytics user interface (UI). Next, you will learn how to upload external data files to Cognos Analytics, and then learn how to start a new dashboard with templates. Lastly, you will learn how to create a simple dashboard.

# Software Used in this Lab
Like the videos in the course, for the hands-on labs we will be using IBM Cognos Analytics trial version (currently limited to 90 days) as this is available at no charge.

# Dataset Used in this Lab
The dataset used in this lab comes from the VM designed to showcase IBM Cognos Analytics. This dataset is published by IBM. You can download the dataset file directly from here: [CustomerLoyaltyProgram.csv](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/CustomerLoyaltyProgram.csv)

# Objectives
After completing this lab, you will be able to:
- Sign up for a Cognos Analytics trial plan and navigate around the Cognos Analytics user interface.
- Upload external data files to the Cognos Analytics platform.
- Start a new dashboard with dashboard templates.
- Create a simple dashboard.

# Exercise 1: Sign up for Cognos Analytics Trial Plan
In this exercise, you will learn how to sign up for an IBM Cognos Analytics trial plan.

1. Go to [Try IBM Cognos Analytics](https://www.ibm.com/account/reg/us-en/signup?utm_source=skills_network&utm_content=in_lab_content_link&utm_id=Lab-IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork&formid=urx-48178).

>Note- If you use your existing cloud account, you will get only 30 days trial for Cognos Analytics. 

2. Fill out section **1. Account information** with your information and click **Next**. The email address you are going to use here, will be called IBMid. <br><ins> If you already have an IBMid, click **Log in**. Enter your IBMid and password. </ins>

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/1.2.png" width="950">
    
<br>

3. Fill out section **2. Additional information** with your information. In the case of the Data Center, select one which is nearest to your location. Then click **Next**.

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/1.3.png" width="815">
    
<br>

4. Now enter the 7 digit code you received on your email address and click **Create account**.

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/1.4.png" width="450">
    
<br>

5. Click **Proceed**.

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/1.5.png" width="450">
    
<br>

6. You are now done with the sign up procedure. You will be redirected to [myibm.ibm.com/dashboard/](https://myibm.ibm.com/dashboard/?utm_source=skills_network&utm_content=in_lab_content_link&utm_id=Lab-IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork) automatically. Wait for some moment until the Coursera on-line training -  Data Visualizations trial offering becomes active.

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/1.6.png" width="836">
    
<br>

7. Click on the **Launch** button of this offering.

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/1.7.png" width="400">
    
<br>

If it has been more than 72 hours since you initiated your Cognos Trial activation, but its still showing Activation in Progress, please let us know on the forum so we can follow up with the Cognos team on your behalf.

NOTE: The trial will not be activated for learners in countries under US sanctions.

8. You have successfully launched the Cognos Analytics platform.

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/1.8.png" width="865">
    
<br>

9. From now on, if you want to sign in to the Cognos Analytics platform with your IBMid, go to [myibm.ibm.com](https://myibm.ibm.com/?utm_source=skills_network&utm_content=in_lab_content_link&utm_id=Lab-IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork). Enter your IBMid and password. Repeat step 7 and 8.

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/1.9.png" width="512">
    
<br>

# Exercise 2: Navigate around Cognos Analytics UI 
In this exercise, you will learn general navigation around the Cognos Analytics user interface.

1. The goal of the Cognos Analytics user interface (UI) is to provide you with a streamlined way to get started using Cognos Analytics and view content and activities pertinent to them. You will begin your general navigation here. 

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/2.A.1.png">
    
<br>

2. Click on the **Navigation Bar**, you can use the **Content** to work on different **Samples** The canvas now shows the Recently used files in the **Recent** section, if any, along with the **File drop zone** where you can easily upload your external data files.

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/2.A.2.png">
    
<br>

3. Once you begin working with content, the canvas will update with your recently used items. In your Cognos Analytics instance, you may see recent content on the canvas.

# Exercise 3: Create a Simple Dashboard with Cognos Analytics 
In this exercise, you will learn how to upload external data files to Cognos Analytics, and then learn how to start a new dashboard with templates. Lastly, you will learn how to create a simple dashboard.

## Task A: Upload External Data Files
In this task, you will learn how to upload external data files to Cognos Analytics.

1. Download the file [CustomerLoyaltyProgram.csv](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/CustomerLoyaltyProgram.csv).
2. To sign in to the Cognos Analytics platform with your IBMid, go to [myibm.ibm.com/dashboard/](https://myibm.ibm.com/dashboard/?utm_source=skills_network&utm_content=in_lab_content_link&utm_id=Lab-IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork).
3. Enter your IBMid and password.
4. Scroll down and click **Launch**.

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/3.A.1.png" width="400">
    
<br>

5. To upload a file, you may either drag and drop this file into the File Drop Zone (highlighted in the image above), or you may click **Upload files** at the bottom left corner to navigate to where the file is saved. For this lab, we will use the second option. Click **New > Upload files**. 

	<<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/upload.PNG">
<br>

6. Click on Drag and drop file here or click to upload, aupdated new file browser window will open. Navigate to where the file is saved, select the file, and click Open.*.

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/upload-data.png">
    
<br>

7. As the file uploads, status bars will be visible as the upload process reads and analyzes the data being brought in. Once it completes, the status bar will update to show the successful completion before closing.

	<<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/Complete_upload.PNG">    
<br>

8. Convert the **CustomerLoyaltyProgram.csv** to **Data module** by selecting the **Data module** in **Other options** and click  **Create** .

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/data-module.PNG">
    
<br>

## Task B: Edit Data Module and view the table on IBM cognos. 
In this task we will learn how to view the dataset on IBM Cognos.
1. Navigate to the **CustomerLoyaltyProgram data module**. Click **Action Menu** (repesented by three dots) under it. Next click the **Edit Data Module** to create a **Data Module**.

	<<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/edit_module.png">
<br>

2. A New Data Module will be created.Click on the Action Menu (represented by three dots) of **New data Module**.Next click the **Table** option under the **Action Menu** to launch the **Create Table** window.

	<<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/2.new.2.png"> 
<br>

3. Click on the **Select Tables** button in the **Create table** screen. Select the uploaded dataset **CustomerLoyaltyProgram.csv**. Finally, click the **Next** button to proceed with the creation of the table.

	<<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/2.new.3.png"> 
<br>

4.  Click the **Refresh** button in the **Create a view of a table** window to view the data.
 
	<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/2.new.4.png">
  
<br>

5. Now you will be able to see view the data in the table,click on the **Finish** button.

	<<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/2.new.5.png"> 
<br>

6. The new table view will be added in source panel now save this Data Module using the **Save** option.

	<<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/2.new.6.png"> 
<br>

7. In the new popup window labeled **Save as**, Give the name **Customer Loyalty Program data module** and select **My content** tab, click on the 'Save' button to proceed.

	<<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/2.new.7.png">  
<br>

8. Next, please navigate to the menu option of IBM Cognos, which is represented by three horizontal lines. Click on the menu and select the 'Content' option from the available choices.

	<<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/2.new.8.png">	
<br>

9. You will now be  able to locate the **Customer Loyalty Program data module** under the **My Content** tab.

	<<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/2.new.9.png">	
<br>

## Task C: Start a New Dashboard with Templates
In this task, you will learn how to start a new dashboard with templates.

1. Click on the uploaded data file **CustomerLoyaltyProgram.csv**.

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/3.B.1.png">
   
<br>

2. The Template window will display allowing you to select the type of dashboard and the template style. Select the **tabbed dashboard style**. This will allow you to have multiple pages for your dashboards. Select the **three-panel template**. Click **Create**.

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/3.B.2.png" width="916">
    
<br>

3. Now you have created a new dashboard using the dashboard template.
updat
    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/3.B.3.png" width="1248">
    
<br>

4. To save the newly created dashboard, press **CTRL+S**. Select **My content** as **Destination**. On the **Save as:** text field, write "Simple dashboard", and click **Save**.

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/3.B.4.png" width="580">
    
<br>

## Task D: Create a Simple Dashboard
In this task, you will learn how to create a simple dashboard with Cognos Analytics.

1. As you build the dashboard, the location placement for Widgets in the dashboard template will be referenced using the following Panel numbers.

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/3.C.1.png" width="533">
    
<br>

2. From the **Navigation** panel, select **Sources** to open the data source panel, if it is not already open. The **Data Source** panel displays the uploaded file **샵stomerLoyaltyProgram.csv� as the Selected Source.

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/3.C.2.New.png" width="150">
    
<br>

3. From the **Data Source** panel, press **CTRL** and select **Order Year, Quantity Sold, Product Line** and drag it to the center of **Panel 1**, releasing them once you see the **drop zone turn blue**.

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/3.C.3.png" width="833">
    
<br>

4. Click on the **Line chart in panel 1** to bring it into focus and render the **on-demand toolbar**.

5. From the on-demand toolbar, select the title and enter the title "Product Line Performance by Year" to the visualization.

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/3.C.5.png" width="545">
    
<br>

6. Highlight the **Title** to open the **Title on-demand toolbar**. From here, you can change the various properties on the title.

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/3.C.6.png" width="550">
    
<br>

7. Click the **Color picker** icon, and change the color to **Red**, then click the font size drop-down and choose **18**.
8. From the **Data Source** panel, select **Quantity Sold** and drag it to the center of **Panel 2**, releasing it once you see the **drop zone turn blue**.

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/3.C.8.png" width="670">
    
<br>

9. From the **Data Source** panel, select **Revenue** and drag it to the center of **Panel 3**, releasing it once you see the **drop zone turn blue**.

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/3.C.9.png" width="931">
    
<br>

10. Click on the tab name **Tab 1** to bring up the Tab鳠on-demand toolbar. Select the **Edit** icon.

    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/3.C.10.png" width="236">
    
<br>    

11. **Rename** the tab to "A - Product Sales�12. To save the current work of the dashboard, press **CTRL+S**.

<h3> Finally, your dashboard "A - Product Sales" should look like below: <h3/>
    <img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0130EN-SkillsNetwork/Hands-on%20Labs/Lab%204%20-%20Getting%20Started%20with%20Cognos%20Analytics/images/3.png" width="1078">
    
<br>

<h3> Congratulations! You have completed Lab 4, and you are ready for the next topic. <h3/>

# Author(s)
[Sandip Saha Joy](https://www.linkedin.com/in/sandipsahajoy/)

## Other Contributor(s) 
[Steve Ryan](https://www.linkedin.com/in/stevelryan)

<!--
# Changelog
| Date | Version | Changed by | Change Description |
|------|--------|--------|---------|
|2023-09-08|2.6|Niveditha Pandith| Updated the screenshot| 	
| 2023-06-23 | 2.5  | Pooja Patel |  Added new task|
| 2022-05-19 | 2.4  | Malika Singla |  Updated dataset used |
| 2022-02-02 | 2.3  | Malika Singla | Updated the screenshots |
| 2021-07-14 | 2.2  | Malika Singla | Updated trial link |
| 2021-06-18 | 2.1  | Malika Singla | Updated the screenshot as per new UI |
| 2021-03-11 | 2.0  | Steve Ryan | Lab rearrangement |
| 2020-09-23 | 1.2  | Steve Ryan | Post review changes |
| 2020-09-16 | 1.1  | Steve Ryan | ID review |
| 2020-09-14 | 1.0  | Sandip Saha Joy | Initial version created |
-->
## <h3 align="center"> © IBM Corporation 2020. All rights reserved. <h3/>
