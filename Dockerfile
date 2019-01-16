ARG TAG="20190115"

FROM huggla/epanet:$TAG as epanet
FROM huggla/tomcat-oracle

USER root

COPY --from=epanet /epanet /

USER sudoer
