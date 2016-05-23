# FROM registry.access.redhat.com/jboss-eap-7-beta/eap70-openshift
FROM karsuncloud/eoffer
USER root
RUN apt-get install curl
EXPOSE 8080 8888
USER 1001
RUN curl https://raw.githubusercontent.com/VeerMuchandi/ps/master/deployments/ROOT.war -o $JBOSS_HOME/standalone/deployments/ROOT.war
