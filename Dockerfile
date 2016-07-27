FROM ghost:0.8
MAINTAINER Andreas Åkre Solberg <andreas@solweb.no>
RUN chown -R user $GHOST_SOURCE/content
ADD etc/config.js config.js
