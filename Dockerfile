FROM gcr.io/distroless/static@sha256:0bec8e882c023de03ba9ed6bb07cd6b5e52b19fb1641505ea1b1c8937f3ccc7d
LABEL maintainer "Bitnami <containers@bitnami.com>, Marko Mikulicic <mmikulicic@gmail.com>"

USER 1001

ARG TARGETARCH
COPY dist/controller_linux_$TARGETARCH/controller /usr/local/bin/

EXPOSE 8080
ENTRYPOINT ["controller"]
