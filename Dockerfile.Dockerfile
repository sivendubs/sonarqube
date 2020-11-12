FROM sonarqube:8.5.1-community
COPY mule-validation-sonarqube-plugin-1.0.3-mule.jar /opt/sonarqube/extensions/plugins/
COPY rules-4.xml /opt/sonarqube/extensions/plugins/
COPY rules-3.xml /opt/sonarqube/extensions/plugins/