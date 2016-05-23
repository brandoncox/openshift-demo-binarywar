FROM registry.access.redhat.com/jboss-eap-7-beta/eap70-openshift
# FROM karsuncloud/eoffer
EXPOSE 8080 8888
RUN curl https://raw.githubusercontent.com/VeerMuchandi/ps/master/deployments/ROOT.war -o $JBOSS_HOME/standalone/deployments/ROOT.war
