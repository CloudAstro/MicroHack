# Solution 2 - Adding a Bicep deployment

Duration: xx-xx min

## Task 1: Task 1 (from challenge)

Some explonation

![image](../.images/02-bicep-extension.png)

Before moving to the next task, make sure you are in the project root directory.

## Task 1: Task 2 (from challenge)

Some explonation

## Task 3: Task 3 (from challenge)

Some explonation

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

  [Back to top](#challenge-2-adding-a-bicep-deployment-to-the-project)
