# Final Project - Team Cooper

# Intro

## Objective
The aim of this project was to develop a pipeline which deploys the frontend and backend of an externally developed application. 

The application:
* [Frontend](https://github.com/spring-petclinic/spring-petclinic-angular)
* [Backend](https://github.com/spring-petclinic/spring-petclinic-rest)

## Plan of Action
![](https://github.com/kb674/Final-readme/blob/main/Images/User%20Stories.png)

The project started with a sprint planning meeting where we decided on the tasks to add to the sprint backlog, created user stories and discussed how to complete each item.
The user stories for the sprint are shown above. We have written two sets of stories, one in the perspective of the end users and another in the perspective of developers who would use our pipeline.


# CI Pipeline
![](https://github.com/kb674/Final-readme/blob/main/Images/Pipeline%20-%203.png)

## Kanban Board
![](https://github.com/kb674/Final-readme/blob/main/Images/Kanban%20-%201.png)
Asana was chosen as our Kanban board. This tool was used to create all our tasks for the sprint, assign Moscow prioritisation and assign tasks to each member. Not only did this tool make these tasks easy to do, it also allowed us to share important files such as diagrams and documentation which aided workflow.

The board has four backlogs
* To Do - Tasks needed to be done. 
* Doing - Tasks which were being carried out.
* Review - Tasks which needed a review from the whole team before moving to the complete log.
* Complete - Completed tasks.

In addition to Moscow prioritisation, each task was given a number of story points which were decided as a team. In our case, we used t shirt sizes which can be seen in the diagram above.

# VSC
Our chosen version control system was git, with GitHub as the host. These tools suited working in a group project as we could all work on different feature branches for specific tasks and then merge our feature branches with our dev branch whenever a task was completed.

## Testing
As the application was externally developed, full tests had been written already. Karma was used for unit tests and Protractor for end-to-end testing. 
In the context of our pipeline, a testing script was written for our CI server. At this stage the script successfully runs the unit tests and has the following logic:
First all the dependencies are downloaded, then the CHROME_BIN variable is exported (path of chromium browser):
````
export CHROME_BIN=/usr/bin/chromium-browser
````
then the test command is run: 
````
ng test --karma-config karma.conf.js --browsers=ChromeHeadless --watch=false
````
By using Chrome Headless this allows for the tests to be run without opening a browser.
The ``--watch=false`` flag allows for the test results to be outputted to the console.

![](https://github.com/kb674/Final-readme/blob/main/Images/Test%20-%201.5.png)

## Docker
Docker was used to create containers for both the frontend and the backend. These images were then pushed to a docker hub repository. By creating containers this way, we could then pull them from the repository during the deployment stage. A docker-compose.yaml has been used to keep the building and pushing of images consistent.

## Terraform
Our infrastructure was provisioned using Terraform. Terraform allows for our infrastructure to be code. The advantages of this are a consistent and reproduceable environment. During our project if any member wanted to see if the app was working, they could use the Terraform files to create the same Kubernetes cluster.

## Kubernetes
As the application needed a more complex configuration for the frontend and backend to communicate with each other, Kubernetes was a suitable choice as the container orchestration tool. By using configuration files, we configured the deployments and services needed for the application to be successfully accessible by an end user. There is a configuration file for the backend, frontend and a nginx server which allows for the first two components to communicate with each other.

## Jenkins
Jenkins was used to automate the above processes. A webhook was used to trigger the job whenever there was a push to the repository. A jenkinsfile specified what scripts to run. There was a total of three scripts, the first script installed all the dependencies needed, then the test script was run and finally a deploy script was used to deploy the app; first provisioning the infrastructure and secondly deploying the app to the cluster. 

## Risk Assessment
![](https://github.com/kb674/Final-readme/blob/main/Images/Risk%20-%201.png)
A risk assessment was carried out at the beggining of the project to outline potential risks and potential control measures to implement during the project to reduce these risks.

# Pricing 
![](https://github.com/kb674/Final-readme/blob/main/Images/Costings%20-%201.png)
![](https://github.com/kb674/Final-readme/blob/main/Images/sql-COSTS.png)

As a team we have also thought of the infrastrcuture needed for a potential production environment which would consist of:
* A vm which will act as the CI server.
* An AKS cluster with 5 nodes.
* Another vm which can be added as a node to the cluster.
* MySQL database.

We have considered the potential costs of this infrastrcuture, noting down the difference in costs when using a pay-as-you subscription in contrast to reserving components. Our general approach to the costing in this scenario would be to run the infrastructure for a certain trial period to get information on the usage. Based on this, we would then leverage the scalabililty of cloud resources to scale our infrastructure based on demand. For example we would then be able to scale based on seasonal demand (example, Christmas period) and daily demand (example, a certain period of the day is consitently more busy).

# Future Improvements
* End to end testing
* Create a test environment (a website that can be only accessed on specific machines)
* Using code to provision a jenkins vm
* Move all DevOps components to Azure DevOps.
* Reduce Jenkins permissions to just a selection of commands.

# Authors
* David Papworth
* David Pexton
* Jayden Lee
* Kushal Bhikhabhai
* Philip Lartley

# Acknowledgements
* Harry Volker
* Ollie Nichols
