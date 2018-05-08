FROM huggla/build-epanet2 as epa
FROM huggla/tomcat-oracle

USER root

COPY --from=epa /epa/epanet2 /usr/local/bin/epanet2

USER sudoer
