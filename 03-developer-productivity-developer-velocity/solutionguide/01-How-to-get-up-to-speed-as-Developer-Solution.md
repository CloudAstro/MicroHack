# Solution 1 - How to get up to speed as Developer

Duration: 40-50 Min

### Task 1: Create a Dev Box

**After you are logged in to the provided link you should see the config and management panel**

![image](../images/solution1/img1.png)

**Next we need to create a Dev Center**
**Click on "Dev Centers"**

![image](../images/solution1/2.png)


**Click on "create"**

![image](../images/solution1/4.png)



**Then give the information required (Subscription, Name and dev center location).**
**When done press the "Review + Create" button. This will make the review and create the dev center (if no errors).**

![image](../images/solution1/3.png)

 
**If you now should go back to "Dev Centers", the dev center your created should appear.
Now click on the dev center you created.**

![image](../images/solution1/5.png)

**Next we need to create a dev box definition. Left in the dev center page in the panel you should see "Dev box definitions". Click
to create one.**

![image](../images/solution1/7.png)

**Probably your Dev box lsit is empty, so you need to create one just like the dev center click on "Create" on top of the page**

**Then you need to setup the definition by giving the name, image and computing. Then click on "Create"**

**Note!** You can create [custom images](https://learn.microsoft.com/en-us/azure/dev-box/how-to-configure-azure-compute-gallery) with preinstalled tools (out of the scope of this microhack)

![image](../images/solution1/8.png)

**After you successfully created the Dev box definition it should appear in your Dev box definition list**

![image](../images/solution1/9.png)

**After we have created our Dev box definition next we need to create a Network Connection. Again in the main panel click on "Network Connections"**

![image](../images/solution1/13one.png)

**Your list should be empty and just like the previous steps on top of the page click on "Create"..**
**Next select the subscription, in the Network connection details you need a virtual network. If the options are empty follow this guide to [set up
a virtual network](https://learn.microsoft.com/en-us/azure/dev-box/how-to-manage-network-connection?tabs=AzureADJoin)**

![image](../images/solution1/13two.png)

**After we successfully created the network go back to the dev center page, click on "Networking" in the left panel. A menu will open in the right
side of the page, in the dropdown you should see the network you created as an option. Set the created network connection as option here
and click "Add"**

![image](../images/solution1/13three.png)


**Nextt, next we are going to create a Project. Go back to the main panel and click on "Projects"**

![image](../images/solution1/10.png)

**Just like the other steps, click on "Create"**

![image](../images/solution1/11.png)

**Next you need to provide a Subscription, name, description and a Dev Center. The Dev center we previously created should appear as an option. Set the created 
dev center in this field. After that Create the Project**

![image](../images/solution1/12.png)

**When your project is created it should appear in your project list.**

![image](../images/solution1/14.png)

**Finally we need to create a Dev box pool**
**In the Projects list, click on the project we crated and then in the panel click on Dev box pools**

![image](../images/solution1/15.png)

**Next create a new Dev box pool, click on "Create" on top of the page**

![image](../images/solution1/16.png)

**Next you need to give it a name, dev box definition (which we created), Network connection (which we created).
set Enable Auto-stop to "No" for now and click "Create"**

![image](../images/solution1/17.png)

**We have set up everything. Next we set the project access. Go back to the main panel, click on Projects and then click on the project we created.
Next, click on "Edit access"**

![image](../images/solution1/18.png)

**On top of the page click on "Add"**

![image](../images/solution1/19.png)

**And then  "Add role assignment"**

![image](../images/solution1/20.png)

**Select a role (Dev Box User for this microhack), then click next**

![image](../images/solution1/21.png)

**Next in the Members tab click on "Select members", a menu will open on the right side of the page, select your account and then assign yourself 
the role as a demo**

![image](../images/solution1/22.png)

**After you assigned yourself a role its time to create a dev box. go to [https://aka.ms/devbox-portal](https://aka.ms/devbox-portal) then you
should see on the top right of the screen a button "New dev box" click on it**

![image](../images/solution1/23.png)

**Give your dev box a name**

![image](../images/solution1/24.png)

**You can run your dev box in the browser or for windwos users also in RDP Client**

![image](../images/solution1/26.png)

### Task 2: Prepare the development environment

**Inside your dev box, download Visual Studio Code just like you would in your local environment**

