---
markdown-version: v1
tool-type: theia
branch: lab-7258-instruction
version-history-start-date: '2023-06-10T12:03:37Z'
locales-url: https://cf-courses-data.static.labs.skills.network/_bpu1D-2JPZlYY_U04nGtQ/M1-Getting%20Started%20with%20IDE-v1-locales.json
---
Getting started with IDE lab instructions

::page{title="Hands-on lab: Getting started with an IDE"}

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-PY0224EN-Coursera/labs/v1/labs/images/IDSN-logo.png" width="200"> <br>

Estimated Time: 15 minutes

In this lab, you will become familiar with using an Integrated Development Environment (IDE). The IDE you will be using is Skills Network Cloud IDE, based on an open-source project called Theia.  This IDE is similar to the popular Visual Studio (VS) Code IDE. In this lab, you will explore the IDE and use it to create and run a simple Python program. You will install a library, create a code file, save it, and edit it to make changes.

## Objectives:

- Explore the IDE interface.
- Install a package using terminal.
- Create a simple Python program using the IDE.
- Execute the program.
- Edit the source code and re-run the program.

::page{title="About the lab environment "}


**Two Components of the Skills Network Lab environment:**

- The instructions that you will follow to complete this lab are displayed on the left side of the screen.

- The area on the right side of the screen is the actual IDE, where you will use the menus, terminals, and tools to develop your code.

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-PY0224EN-Coursera/labs/v1/labs/images/ide.png" width="75%"> 

::page{title="Exercise 1: Explore the IDE interface"}

**Explore the menus, terminals, and tools**

Let us now explore the IDE interface. Please click on each of the icons and menu items highlighted in red boxes in the following screenshots to become familiar with their purpose.

**1.** In the **Explorer** menu, you will find your folders, files (created or cloned), and pre-requisites installed.

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-PY0224EN-Coursera/labs/v1/labs/images/explorer.png" width="75%"> 

**2.** In the **Search** menu, you can search for particular folders or files that were created or cloned.

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-PY0224EN-Coursera/labs/v1/labs/images/search.png" width="75%"> 

**3.** In the **Source Control** menu, you will find the cloned repository.

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-PY0224EN-Coursera/labs/v1/labs/images/source_control.png" width="75%"> 

**4.** In the **Debug** menu, you can debug and troubleshoot your code.

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-PY0224EN-Coursera/labs/v1/labs/images/debug.png" width="75%"> 

**5.** In the **Extensions** menu, you can check the recommended, installed, and built-in software already provided as the pre-requisitesprerequisites. 

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-PY0224EN-Coursera/labs/v1/labs/images/extention.png" width="75%"> 

**6.** In the **Skills Network Toolbox**, you will find options to use database, big data, cloud, and other tools to complete lab exercises in other courses.

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-PY0224EN-Coursera/labs/v1/labs/images/toolbox.png" width="75%"> 

**7.** Explore the menu options at the top of the IDE: File, Edit, Selection, View, Go, Run, Terminal, Help. You will be using some of these menu items in subsequent exercises. A summary of what they are used for is provided below.

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-PY0224EN-Coursera/labs/v1/labs/images/menu.png" width="75%"> 

- **File:** This menu is used to create a new file or folder and save the file.

- **Edit:** This menu is used to undo, redo, cut, paste, and find the file.

- **Selection:** This menu is used to Select All, Copy line up or down and Move line up or down in the file.

- **View:** This menu is used to view the other menus like explorer, extensions, and search.

- **Go:** This menu is used to Go back, view the last edit location, and go to the files.

- **Run:** This menu is used for debugging and Adding configurations.

- **Terminal:** This menu is used to open the New terminal and run the tasks.

- **Help:** This menu is used to view the list of extensions and get started a file.

Click on each menu and explore them.

**You will learn about folder and file creation and how to use the terminal to run the commands later in this lab.**

::page{title="Exercise 2: Create a simple Python program using the IDE"}

**1.** On the window to the right, click on the File menu and select **"New Folder"** option, as shown in the image below.

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-PY0224EN-Coursera/labs/v1/labs/images/folder.png" width="75%"> 

Name the folder **"welcome101"**.

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-PY0224EN-Coursera/labs/v1/labs/images/folder_2.png" width="75%"> 

**2.** Right-click on the folder welcome101 and click on **"New File"**.

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-PY0224EN-Coursera/labs/v1/labs/images/file.png" width="75%">

Create a new file and name it **"welcome.py"**.

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-PY0224EN-Coursera/labs/v1/labs/images/file2.png" width="75%">

**3.** Paste the below code to the welcome.py file and save it using Ctrl+S.

```Python
import numpy as np

a = np.array([1,2])
b = np.array([3,4])
c = a + b
print(c)
```

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-PY0224EN-Coursera/images/welcome_py.png">

::page{title="Exercise 3: Execute the program"}


**1.** Open a terminal window using the editor New  Terminal.

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-PY0224EN-Coursera/labs/v1/labs/images/new-terminal.png" width="75%">

In the terminal, you will run all the commands to complete the lab.

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-PY0224EN-Coursera/labs/v1/labs/images/terminal1.png" width="75%"> 

**2.** Verify that python is installed.

```bash
python3.11 --version
```
You should see output similar to this, though the versions may be different:

```
Python 3.11.2
```
**3.** Install the numpy package.
```bash
python3.11 -m pip install numpy
```
You should see the an output similar to this.

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-PY0224EN-Coursera/images/numpy_install.png">

**4.** Change the directory for this lab by using the command shown below in the terminal.

```bash
cd welcome101
```

**5.** Run the program in the terminal using the below command:

```bash
python3.11 welcome.py
```

**You will get the following output!**

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-PY0224EN-Coursera/images/code_output.png">

::page{title="Exercise 4: Edit the source code and re-run the program"}

**1.** Replace the source code with the code shown below:

```python
message= "Welcome to the world of programming!"
print (message)
```

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-PY0224EN-Coursera/labs/v1/labs/images/correct_code.png" width="75%"> 

**2.** Run the program in the terminal using the command below:

```bash
python3.11 welcome.py
```

You should see an output similar to this.

```
Welcome to the world of programming!
```

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-PY0224EN-Coursera/labs/v1/labs/images/correct_output.png" width="75%">

::page{title="Practice Exercises:"}


**1.** Create a new folder called "software101".

<details>
<summary>Click here for Hint</summary>

On the window to the right, click on the File menu and select the **"New Folder"** option, as shown in the image below. Name the folder **"software101"**.

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-PY0224EN-Coursera/labs/v1/labs/images/folder.png" width="75%">

</details>

**2.** In software101, create a new file called "software.py".

<details>
<summary>Click here for Hint</summary>

Right-click on the folder software101, click on **"New File"**, create a new file, and name it **"software.py"**.

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-PY0224EN-Coursera/labs/v1/labs/images/hint.png" width="75%">

</details>

**3.** Write code to add two arrays using Numpy library.

* Note: Since the library is already installed in the practice, there is no need to install it again.

<details>
<summary>Click here for Hint</summary>

Import the numpy library, create two numpy arrays, and add them.
</details>

<details>
<summary>Click here for Solution</summary>

Paste the code below to the software.py file and save it using Ctrl+S.

```Python
import numpy as np

a = np.array([2,3,4])
b = np.array([3,2,1])
c = a + b
print (c)
```

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-PY0224EN-Coursera/images/image_1.png" width="75%">

</details>

**4.** Run the program.

<details>
<summary>Click here for Solution</summary>

Run the program in the terminal using the below command. Make sure you are in the correct folder.

```bash
cd software101
python3.11 software.py
```

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-PY0224EN-Coursera/images/image_2.png" width="75%">

</details>

**5.** Edit the software.py file and change one of the arrays.

<details>
<summary>Click here for Solution</summary>

Change the array 'a' to [5,3,1] and save the file.

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-PY0224EN-Coursera/images/image_3.png" width="75%">

</details>

**6.** Run the updated file.

<details>
<summary>Click here for Solution</summary>

Run the program in the terminal using the below command:

```bash
python3.11 software.py
```

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-PY0224EN-Coursera/images/image_4.png">

</details>

Congratulations! You have completed this lab and know how to run python programs in an IDE.

 


## Author
Pallavi Rai

<!--
## Changelog

| Date | Version | Changed by | Change Description |
|------|--------|--------|---------|
|2023-05-29 | 2.0 | Abhishek Gagneja | Updated instructions and images|
| 2023-05-04 | 1.2 | Eric Hao | Updated Page Frames and Formattings |
| 2022-07-28 | 1.1 | Rav Ahuja | Instructions and formatting updated |
| 2022-07-22 | 1.0 | Pallavi Rai | Initial version created |
-->

<h3 align="center"> &#169; IBM Corporation. All rights reserved. <h3/>

