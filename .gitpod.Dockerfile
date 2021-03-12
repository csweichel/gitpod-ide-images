FROM gitpod/workspace-full:latest

USER root
RUN cd /usr/bin \
    && curl -L https://github.com/gitpod-io/leeway/releases/download/v0.2.0/leeway_0.2.0_Linux_x86_64.tar.gz | tar xzv \
    && rm README.md LICENSE

ENV LEEWAY_WORKSPACE_ROOT=/workspace/gitpod-ide-images