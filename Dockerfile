FROM nvidia/cuda:12.4.1-base-ubuntu22.04

RUN apt-get update && apt-get install -y --no-install-recommends \
    bash ca-certificates curl tini \
 && rm -rf /var/lib/apt/lists/*

# Vast pornește containerul și rulează comanda de mai jos.
ENTRYPOINT ["/usr/bin/tini","--"]
CMD ["bash","-lc","echo 'Vast host container is alive'; nvidia-smi || true; sleep infinity"]
