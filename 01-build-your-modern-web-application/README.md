![image](./.images/MicroHack_Logo_1.png)

# **01 Build your modern web application - MicroHack**

## **Introduction**

This hack is designed to help you get hands-on experience with publishing a modern web application to Microsoft Azure in three different ways:

- as an Azure Static Web App
- as an App Service
- as a containerized installation

## **Learning Objectives++

In this hack you will learn how to use Bicep to deploy infrastructure to Azure, how to build a CI/CD pipeline in GitHub to deploy the web app, and get an overview of the differnt ways of hosting the web app in Azure.
This lab is not a full explanation of preparing a development workstation, please consider the following articles required pre-reading to build foundational knowledge.

[Setup Node on Windows](https://nodejs.org/en/download/)

[Setup VS Code](https://code.visualstudio.com/Docs/setup/setup-overview)

[How to setup git](https://docs.github.com/en/get-started/quickstart/set-up-git)

## **Content and challenges**

- [Getting started](./Challenges/00-Pre-Reqs.md)
- [Challenge 1: Deploy the lab environment](./Challenges/01-Challenge1.md)
- [Challenge 2: Adding a bicep deployment](./Challenges/02-Challenge2.md)
- [Challenge 3: Create a React Web App](./Challenges/02-Challenge3.md)
- [Challenge 4: Setup GitHub Actions](./Challenges/01-Challenge4.md)
- [Challenge 5: Deploy as Static Web App](./Challenges/01-Challenge5.md)
- [Challenge 6: Deploy as App Service](./Challenges/01-Challenge6.md)
- [Challenge 7: Deploy as Containerized Application](./Challenges/01-Challenge7.md)

## **Objectives**

After completing this MicroHack you will:

- Know how to build a Bicep deployment with a resource group and a static web app
- Understand the easiness of creating a React web app.
- Understand how to leverage GitHub Actions to build a CI/CD pipeline for this solution

## **Prerequisites**

In order to use the MicroHack time most effectively, the following tasks should be completed prior to starting the session.

With these pre-requisites in place, we can focus on building the fundamental knowledge in Bicep, React and GitHub that is required when working with the product.

In summary:

- Azure Subscription
- VS Code installed on the local PC
- WSL used as Linux subsystem

Permissions for the deployment:

- Contributor on your Azure Subscription

### Architecture

At the end of this MicroHack your base lab build looks as follows:

![image](Path to the architecture missing)

### **Challenge 1: Deploy the lab environment.**

  In this challenge we are going to use VS Code with WSL to create a react web app. Since Node is used as a programming language, having a full stack linux subsystem for Open Source components is advantageous.

  [How to setup this scenario](https://learn.microsoft.com/en-us/windows/wsl/install)

  [How to setup git](https://docs.github.com/en/get-started/quickstart/set-up-git)

### **Install VS Code Extensions**

  In VS Code install the git extension pack:

  ![image](./.images/01-git-extension-pack.png)

  Add the Bicep Extension to VS Code:

  ![image](./.images/02-bicep-extension.png)

### **Install node in WSL:**
  
  We are goint to install node as described [here](https://learn.microsoft.com/en-us/windows/dev-environment/javascript/nodejs-on-wsl).

  `sudo apt-get install curl`

  `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash`

  `command -v nvm`

  This should return `nvm`

  `nvm -v`

  This should return the version >= 0.39.2

  To install node enter the following:

  `nvm install node`

  `nvm ls`

  ![image](./.images/03-node-installation.png)

  [Back to top](#01-build-your-modern-web-application)

## **Challenge 2: Adding a Bicep deployment to the project**

In this challenge we add the Bicep deployment to the project.
  
First we setup a folder structure in our project with the following folders:

- bicep-modules  
- parameters  
- pipelines
  
For having a "Bicep Hook", we create a file in the project root directory named main.bicep.
  
The result should look like this:

![image](./.images/04-folder-structure.png)

There is a Common Azure Resource Modules Library available [here](https://github.com/Azure/ResourceModules), that comes in versions. We use these modules in the deployment, so in the folder bicep-modules, a subfolder is created for the library named carml.
Below is the version number as folder, that contains the version of carml you choose to use when building your bicep deployment.
  
The result looks like this:

![image](./.images/05-carml-structure.png)

Now we are going to write the modules that are called from the main.bicep later. We need a module for the resource group creation in a subscription, and a module for setting up the static web app.
So we create two files in the folder bicep-modules:

- deploy-resourcegroup.bicep
- deploy-webapp.bicep

The result should look like this:

![image](./.images/06-bicep-module-files.png)

Developing in Bicep with this setup is a pleasure. Try to make use of the IntelliSense feature and the Bicep language support in VS Code. To start just type tar and wait for the suggestions to come up. Select targetScope from the list. Type = and press Strg+Space to see possible values for targetScope. It is very intuitive...

![image](./.images/07-bicep-main.png)

When calling modules in Bicep, the path is specified for the module.bicep file to call. A module can have output variables that are returned as an object to the name of the module in main.bicep. This helps to use results from modules later in the script, e.g. to deploy some service into a resource group. The output from module deploy-resourcegroup is used to initialize the module deploy-webapp.bicep.

![image](./.images/08-bicep-main-modules.png)

Inside the module a resource can be created. Type res and wait for suggestions. Use resource and give that resource a name. Next is to select the API of the service. After the @ symbol, the APi version is selected.

![image](./.images/09-bicep-module-rg.png)

[Back to top](#01-build-your-modern-web-application)

## **Challenge 3: Create a React Web App**

  To create a React Web App, run the following commands from the [root](./) folder of the project.
  Open the terminal in VS Code using the WSL distribution of your choice. from the project root folder   type:
  
  `npx create-react-app cloudastro-react-app`
  
  The following output is shown:
  
  ![image](./.images/11-react-app-creation.png)
  
  This can take a minute or two.
  So we can now change into cloudastro-react-app and start a pre-build version of this app locally.
  
  When the setup of react web app is finished, the following output is shown:
  
  ![image](./.images/12-react-app-result.png)
  
  `cd cloudastro-react-app`
  
  `npm start`
  
  This brings up the React Web App to your default browser on [http://localhost:3000](http://localhost:3000)
  
  ![image](./.images/13-react-app-starting.png)
  
  ![image](./.images/14-react-app-running.png)
  
  Now we can make some changes to the React Web App to align with the MicroHack.
  For that we are going to change the file App.js in the created folder [./cloudastro-react-app/src/App.js](./cloudastro-react-app/src/App.js)

  The result is shown like this:
  
  ![image](./.images/15-react-web-app-customized.png)
  
  We are ready for a deployment, sice this web page only exist for demonstration of the possibilities.
  
  [Back to top](#01-build-your-modern-web-application)

## **Challenge 4: Commit to git and setup GitHub Action**

In this Challenge we are checking in the code to git and use GitHub to create a deployment action.
First we have to create a build version of the React Web App. for this type the following command:

`npm run build`

The result shoud look like this:

![image](./.images/17-react-web-app-compiled-successfully.png)

[Back to top](#01-build-your-modern-web-application)

## **Challenge 5: Deployment Ready**
