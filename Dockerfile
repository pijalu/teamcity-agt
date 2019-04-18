FROM jetbrains/teamcity-agent
COPY setup/java.security /opt/java/openjdk/jre/lib/security/

RUN apt-get update && \
	apt-get install -y build-essential && \
	curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
	apt-get install -y nodejs && \
	apt-get install -y man && \
	apt-get clean all
