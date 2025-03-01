FROM scratch

ARG VERSION=4.8

LABEL operators.operatorframework.io.bundle.mediatype.v1=registry+v1
LABEL operators.operatorframework.io.bundle.manifests.v1=manifests/
LABEL operators.operatorframework.io.bundle.metadata.v1=metadata/
LABEL operators.operatorframework.io.bundle.package.v1=vertical-pod-autoscaler
LABEL operators.operatorframework.io.bundle.channels.v1=${VERSION}
LABEL operators.operatorframework.io.bundle.channel.default.v1=${VERSION}

COPY manifests/${VERSION}/*.yaml /manifests/
COPY install/olm/ci-metadata /metadata/
