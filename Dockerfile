# FROM registry.access.redhat.com/jboss-eap-7-beta/eap70-openshift
FROM karsuncloud/eoffer
USER root
RUN sudo apt-get update
RUN sudo apt-get -y install curl
EXPOSE 8080 8888
RUN chmod -R 777 /root

# RUN curl https://raw.githubusercontent.com/VeerMuchandi/ps/master/deployments/ROOT.war -o $JBOSS_HOME/standalone/deployments/ROOT.war
RUN curl https://raw.githubusercontent.com/VeerMuchandi/ps/master/deployments/ROOT.war -o /opt/sw/jboss/jboss/jboss-eap-6.2/standalone/deployments/ROOT.war

CMD [ "/opt/sw/jboss/jboss/jboss-eap-6.2/bin/standalone.sh", "-b", "0.0.0.0" ]
#CMD ["/root/startup.sh","-D"]`
#CMD [ "echo", "hi" ]
USER 1001
