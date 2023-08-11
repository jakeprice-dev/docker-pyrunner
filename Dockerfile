FROM fedora:37

WORKDIR /app

COPY requirements.txt .

RUN dnf --assumeyes update && \
    dnf --assumeyes install python3-pip wget && \
    dnf clean all && \
    pip install -r requirements.txt

