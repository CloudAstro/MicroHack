# **01 Build your modern web application**

## Prepare your development environment**

  In this challenge we prepare the development environment.

### **In these Challenges we use the Windows Subsystem for Linux together with VS Code.**

  [How to setup this scenario](https://learn.microsoft.com/en-us/windows/wsl/install)

  [How to setup git](https://docs.github.com/en/get-started/quickstart/set-up-git)

  In VS Code install the git extension pack:

  ![image](./.images/01-git-extension-pack.png)

  Add the Bicep Extension to VS Code:

  ![image](./.images/02-bicep-extension.png)

### **Install node in WSL:**

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

## **Challenge 1: Adding a Bicep deployment to the project**

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

  

## **Challenge 2: Create a React Web App**

To create a React Web App, run the following commands from the root folder of the project:

`npx create-react-app cloudastro-react-app`

The following output is shown:

## **Challenge 3: Commit to git and setup GitHub Action**

In this Challenge

`npx create-react-app cloudastro-react-app`

The following output is shown: