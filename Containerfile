FROM registry.access.redhat.com/ubi8/ubi-minimal:latest as redhat8-lvm

RUN microdnf --disableplugin=subscription-manager -y install lvm2 \
    && microdnf --disableplugin=subscription-manager clean all

CMD ["/bin/bash", "-c", "sleep infinity"]
