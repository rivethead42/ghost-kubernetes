FROM ghost:0.8
MAINTAINER Andreas Åkre Solberg <andreas@solweb.no>

ADD etc/config.js config.js

ENV GHOST_URL=http://localhost PROD_FORCE_ADMIN_SSL=false
