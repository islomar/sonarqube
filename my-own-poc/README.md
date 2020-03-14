# SonarQube
* Automation of static analysis.
* Detect and visualize code smells, bugs, vulnerabilities, etc.
* Version 7.4 [29.09.2018]. LTS 6.7.x


## Features
* Overall health
* Analyze pull requests
  - Comment pull requests
  - https://github.com/linagora/docker-sonarqube-pr
* Visualize the history, the tendency.
* OWASP


## Prerequisites for running it locally
You need Docker installed.


## How to start the SonarQube server
1. Run `docker-compose up`
2. Access http://localhost:9000
  * username/password: `admin/admin`

## Recommended way to run the code analysis
See Option 3 on next section.

## Other ways to run the code analysis
There are several options:
* Option 1: Integrate it with your favourite build tool (e.g. Maven for Java). Executing the 
corresponding maven goal, it would send the data to the SonarQube server.
  - https://docs.sonarqube.org/display/SCAN/Analyzing+with+SonarQube+Scanner+for+Maven
* Option 2: Integrate with Jenkins:
  - https://docs.sonarqube.org/display/SCAN/Analyzing+with+SonarQube+Scanner+for+Jenkins
* Option 3: Run `sonar-scanner` from your local repository.
  - https://docs.sonarqube.org/display/SCAN/Analyzing+with+SonarQube+Scanner
  - Download and install the sonar-scanner file from the previous URL.
  - [java] Compile and run your tests with Jacoco report (e.g. `mvn jacoco:prepare-agent test jacoco:report`)
  - On the project to be analysed, you have several options: 
    - either create and configure a sonar-project.properties, 
    - or run `sonar-scanner` with parameters, e.g. `sonar-scanner -Dsonar.projectKey=hapi -Dsonar.sources=service/src`
    - or run `sonar-scanner -Dproject.settings=hapi-sonar-project.properties`

## Links
* https://www.sonarqube.org/ 
  - Administration guide: https://docs.sonarqube.org/latest/
  - Examples: https://github.com/SonarSource/sonar-scanning-examples
  - Advanced (e.g. multimodule): https://docs.sonarqube
  .org/display/SCAN/Advanced+SonarQube+Scanner+Usages
  - https://docs.sonarqube.org/latest/user-guide/user-token/
  - Test coverage: https://docs.sonarqube.org/display/PLUG/Java+Unit+Tests+and+Coverage+Results+Import
* https://github.com/islomar/poc-docker/tree/master/sonarqube
* bettercodehub: https://bettercodehub.com/ 
* http://www.xgomez.com/2016/12/quickest-static-code-analysis-with-sonar-and-docker/
* https://github.com/islomar/payments-api
  * https://sonarcloud.io/dashboard?id=com.islomar.payments%3Apayments-api

