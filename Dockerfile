FROM fedora:39

WORKDIR /app

COPY requirements.txt .

RUN dnf --assumeyes update && \
    dnf --assumeyes install libxml2-devel libxslt-devel python3-pip wget && \
    dnf clean all && \
    pip install -r requirements.txt

