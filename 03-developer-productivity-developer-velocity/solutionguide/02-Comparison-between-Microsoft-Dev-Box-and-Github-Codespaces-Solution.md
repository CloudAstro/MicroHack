# Solution 2 - Comparison between Microsoft Dev Box and Github Codespaces 

Duration: 60-75 Min

### Task 1: Create a reusable Microsoft dev box image ready for a Java 17 spring boot project

Now that we have a dev box created lets create an image for a Java Spring Boot project.

- Go back to Azure and create a Compute Gallery.

![image](../images/solution2/Capture21.PNG)


- Now create a Virtual Machine image definition. In this microhack we are not covering how to create VMs but you can easily follow [this guide](https://learn.microsoft.com/en-us/azure/virtual-machines/windows/quick-create-portal). VM generation has to be Gen 2!

### Task 2: Github Codespaces setup

Login to [Github Codespaces](https://github.com/features/codespaces).
In the homepage click on "Get started for free"

![image](../images/solution2/Screenshot1.png)

Next create a blank Project. Open create a `index.html` file and apply the same code like Task 1.

![image](../images/solution2/Screenshot3.png)

We now have a simple app on both environments, don't hesitate to play around longer, for this microhack this should be only an introduction.

### Task 3: VS Code Extensions

Open VS Code and in the Extensions tab search for "Live Server" and install it (apply on dev box and codespaces).
After you are done installing, Press "Go Live" which now appeared in VS Code and your app should appear in the browser automatically.

![image](../images/solution2/26.png)

### Task 4: Source Code Management

- In Microsoft dev box you can push your code to Github or Azure DevOps just like you would in an local environment.

- Github Codespaces offers an easier solution to directly create a new repository

In Github Codespaces go to the main page and click on the (three dots right side of the box) Menu and then "Publish to a new repository"

![image](../images/solution2/Screenshot11.png)

Now you can also rename the project and click on "Create Repository"

![image](../images/solution2/Screenshot12.png)


**Microsoft Dev Box and Github Codespaces general differences**

(1) GitHub codespaces runs on Linux where as Microsoft Dev Box runs on Windows. 

(2) Source Code Management on GitHub codespaces is supported only on github, in Microsoft Dev Box any version control system would do the job. 

(3) GitHub codespaces supports workloads like Web Apps, APIs, Backends Microsoft Dev Box on the other hand any workload including desktop, games and much more 

(4) The IT in GitHub CodeSpaces is managed by github.com team and Microsoft Dev Box by the Endpoint Manager & Microsoft Azure.


**What is the best opion for you**  

This was a basic introduction to Cloud Environment Development and is by far not everything what cloud environment offers you as a developer. It is recommanded to try on your own and see based on your personal experience where you would find yourself more productive. 
