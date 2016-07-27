FROM ghost:0.8
MAINTAINER Andreas Åkre Solberg <andreas@solweb.no>
RUN chown -R user $GHOST_SOURCE
RUN chown -R user $GHOST_SOURCE/content
RUN chown -R user $GHOST_CONTENT
ADD etc/config.js "$GHOST_SOURCE/config.js"
COPY entrypoint.sh /entrypoint.sh
