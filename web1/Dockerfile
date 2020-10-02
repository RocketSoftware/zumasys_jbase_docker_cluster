FROM zumasys/jbase_base
RUN mkdir /myapp

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
COPY jnet_config /opt/jbase/CurrentVersion/config
COPY jnet_env /opt/jbase/CurrentVersion/config
COPY jrfs_config /opt/jbase/CurrentVersion/config

RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

# Start the main process.
CMD ["sleep", "10000" ]