FROM ubuntu
ARG MESSAGE_ARG=’Building message’
ENV message $MESSAGE_ARG
Label Author="Author" Company="Slice"
RUN echo "Building image..."
COPY docs/ /docs/
WORKDIR /docs
run cat instructions.txt
ENTRYPOINT ["/bin/sh"]
RUN echo $message
