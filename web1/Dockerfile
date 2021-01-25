FROM zumasys/jbase_base
RUN mkdir /myapp

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
COPY jnet_config /opt/jbase/CurrentVersion/config
COPY jnet_env /opt/jbase/CurrentVersion/config
COPY jrfs_config /opt/jbase/CurrentVersion/config
COPY jbase_env.sh /opt/jbase/CurrentVersion/
COPY jagent.sh /tmp/jagent.sh
COPY telnet /tmp
COPY ORDERS /tmp
COPY CLUSTER /tmp

RUN yum install -y xinetd telnet-server dos2unix
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

# Start the main process.
CMD ["tail", "-f","/dev/null" ]