---
markdown-version: v1
tool-type: theiadocker
branch: lab-2985-instruction
version-history-start-date: '2022-12-20T11:34:27Z'
locales-url: https://cf-courses-data.static.labs.skills.network/gJ3u0IwSsDoxIvk8T5kNxg/HadoopMapReduce-v1-locales.json
---
::page{title="Hands-on lab on Hadoop Map-Reduce (20 mins)"}

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/images/IDSN-logo.png" width="200" alt="cognitiveclass.ai logo">

##

#### Objectives

- Run a single-node Hadoop instance
- Perform a word count using Hadoop **Map Reduce**.

::page{title="Set up Single-Node Hadoop"}

The steps outlined in this lab use the single-node Hadoop Version 3.3.6 **Hadoop** is most useful when deployed in a fully distributed mode on a large cluster of networked servers sharing a large volume of data. However, for basic understanding, we will configure Hadoop on a single node.

In this lab, we will run the WordCount example with an input text and see how the content of the input file is processed by WordCount.

1. Start a new terminal

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/labs/images/New_terminal.png">

2. Download hadoop-3.2.3.tar.gz to your theia environment by running the following command.

```bash
curl https://dlcdn.apache.org/hadoop/common/hadoop-3.3.6/hadoop-3.3.6.tar.gz --output hadoop-3.3.6.tar.gz
```

3. Extract the tar file in the currently directory.

```bash
tar -xvf hadoop-3.3.6.tar.gz
```

4. Navigate to the hadoop-3.3.6 directory.

```bash
cd hadoop-3.3.6
```

5. Check the hadoop command to see if it is setup. This will display the usage documentation for the hadoop script.

```bash
bin/hadoop
```

6. Run the following command to download data.txt to your current directory.

```bash
curl https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/labs/data/data.txt --output data.txt
```

7. Run the Map reduce application for wordcount on data.txt and store the output in **/user/root/output**

```bash
bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-3.3.6.jar wordcount data.txt output
```

>This may take some time.

8. Once the word count runs successfully, you can run the following command to see the output file it has generated.

```bash
ls output
```

You should see **part-r-00000** with **_SUCCESS** indicating that the wordcount has been done.

>While it is still processing, you may only see *'_temporary'* listed in the output directory. Wait for a couple of minutes and run the command again till you see output as shown above.

9. Run the following command to see the word count output.

```bash
cat  output/part-r-00000
```

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/labs/images/wordcount_output.png" alt="Local wordcount output">

The image below shows how the MapReduce wordcount happens.

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/labs/images/map_reduce_picture_rep.png">

::page{title="Practice Lab"}

1. Do a word count on a file with the following content.

```
Italy Venice
Italy Pizza
Pizza Pasta Gelato

```

<details><summary>Click here for a hint on how to get started</summary>
- Delete the data.txt file and output folder

```
rm data.txt
```

```
rm -rf output
```

</details>

<details>
<summary>Click here for hint on how to create a file to wordcount</summary>
Create data.txt with the required content. You may either use the file editor.

</details>

<details>
<summary>Click here for solution on how to do word count on the file</summary>
Run the following command

```
bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-3.3.6.jar wordcount data.txt output
```

</details>

<details>
<summary>Click here for sample output</summary>

The output will be as below.

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/labs/images/practice_lab_output.png" style="border: solid 1px white; margin-top:10px; margin-bottom:10px">

</details>

::page{title="Congratulations! You have:"}

* Deployed Hadoop using Docker
* Copied data into HDFS
* Used MapReduce to do a word count

<a class="twitter-share-button"
  href="https://twitter.com/intent/tweet?text=I%20just%20learned%20how%20to%20deploy%20%23Hadoop%20using%20%23Docker,%20load%20data%20into%20%23HDFS,%20and%20used%20%23MapReduce%20to%20perform%20a%20word%20count%20as%20part%20of%20the%20introductory%20Big%20Data%20with%20Hadoop%20and%20Spark%20course%20by%20IBM."><img src="https://about.twitter.com/content/dam/about-twitter/x/large-x-logo.png.twimg.1920.png" width="25/">Tweet and share your achievement!</a>

 ## Author(s)

 Lavanya T S

 ## Contributor(s)

 [Aije Egwaikhide](https://www.linkedin.com/in/aije-egwaikhide/) 

<!-- ## Changelog

| Date | Version | Changed by | Change Description |
|------|--------|--------|---------|
| 05-04-2022 | 1.3 | Sourabh | Updated Hadoop version |
| 18-01-2022 | 1.2 | Lavanya | Changed to single node hadoop |
| 16-07-2021 | 1.1 | Aije | Modified multiple areas |
| 11-07-2021 | 1.0 | Lavanya | Created lab instructions for Word count using MapReduce |-->

<h3 align="center"> &#169; IBM Corporation. All rights reserved. <h3/>