# Solution 6 - Setup basic monitoring with Azure Monitor

Duration: 15-30 min

### Task 1: Review the Log Analytics Workspace

In the Azure portal please review the Log Analytics workspace created in Challenge 1. See the different logs created for the services in this hack.



### Task 2: Review Application Insights

In the Azure portal please review the Application Insights workspace created in Challenge 1. See the different analysis options and reports for the services in this hack.

In in the Azure portal select Application Insights.

![image](../.images/65-monitoring-appinsights.png)

In the left navigation pane select Application Map:

![image](../.images/66-monitoring-appinsights.png)

Navigate to Live Metrics and pay attention to the right pane while you make http get requests to either application. To do so open the browser and enter the following URL's:

For the Static Web Application your URL might vary due to automatically naming of the instance:
`https://gentle-smoke-09270ea03.2.azurestaticapps.net/api/HttpTrigger1?name=MicroHacker`

For the Web App type the following URL:
`https://app-microhack-tst.azurewebsites.net/`

![image](../.images/67-monitoring-appinsights.png)

### Task 3: Use Azure Monitor

In Azure portal use the Search line and type `Monitor`. Select Monitor from the list. See the points connected in Azure Monitor. On the left navigation pane all types of logging from your Azure Infrastructure are visible.

[Home](./../README.md)