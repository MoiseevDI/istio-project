# istio-project
istio ПППРП HW by Moiseev David

An application for analyzing the tonality of the latest news headlines. Deployed in K8S with Istio.
To deploy the application, clone this repository and execute "make apply". To delete, run "make delete".

Currently deployed on a test cluster at http://testapp.mdiservices.ru

If the background of the title is bright red, then the news is negative.
If the background of the title is bright green, then the news is positive.
Neutral news is indicated in dark green.

The latest news is pulled up from https://newsdata.io/

![Alt text](istio-flow.png?raw=true "Istio flow")

The application consists of 3 microservices.
1) ip-ui - frontend react application
2) ip-back - backend fast api application
3) ip-logic - microservice for pulling news from a source and analyzing its tonality using the dostoevski model

Build of microservices images is automated by commit to the main branch using jenkins. Uploading images to docker hub is also automated.