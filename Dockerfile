FROM library/alpine:latest
#RUN apt install php
#RUN yum install php
RUN apk add php

FROM scratch
COPY --from=0 / /
