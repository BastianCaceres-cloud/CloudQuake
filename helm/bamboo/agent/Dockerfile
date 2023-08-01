# Comienza con una imagen base de Java
FROM openjdk:8-jdk

# El directorio de trabajo
WORKDIR /home/bamboo

# Copia el instalador del agente de Bamboo en la imagen Docker
COPY atlassian-bamboo-agent-installer-9.2.1.jar bamboo-agent-installer.jar

# Inicia el agente de Bamboo con 
CMD ["java", "-jar", "bamboo-agent-installer.jar", "http://bamboo.bamboo.svc.cluster.local/agentServer/"]



# Inicia el agente de Bamboo con 
# CMD ["java", "-jar", "bamboo-agent-installer.jar", "http://bamboo.bamboo.svc.cluster.local/agentServer/"]

# Inicia el agente de Bamboo con localhost:8085
#CMD ["java", "-jar", "bamboo-agent-installer.jar", "http://localhost:8085/agentServer/"]