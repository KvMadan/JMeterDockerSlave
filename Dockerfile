# Use image kmadan/jmeter:3.3
FROM kmadan/jmeter:3.3
LABEL MAINTAINER="Madan Kavarthapu"

# Ports to be exposed
EXPOSE 1099 50000

# Application entry point inside container 
ENTRYPOINT $JMETER_HOME/bin/jmeter-server -Dserver.rmi.localport=50000 -Dserver_port=1099
