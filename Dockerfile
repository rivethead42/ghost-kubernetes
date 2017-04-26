FROM ghost:latest
MAINTAINER Andreas Åkre Solberg <andreas@solweb.no>
RUN chown -R user $GHOST_SOURCE

ADD content $GHOST_SOURCE/content

RUN chown -R user $GHOST_CONTENT

RUN npm install --save ghost-storage

COPY entrypoint.sh /entrypoint.sh
ADD etc/config.js "$GHOST_CONTENT/config.js"

CMD ["npm", "start", "--production"]
