FROM golang:1.14.4-stretch

WORKDIR /workspace

RUN git clone https://github.com/my5G/my5G-RANTester.git \
    && git checkout f652b3d1a740bfdac8fa83e1132555efd6797ba7 \
    && cd my5G-RANTester  \
    && go mod download 
    
# Move to the binary path
WORKDIR /workspace/my5G-RANTester/cmd

RUN go build -o app

# Config files volume
VOLUME [ "/workspace/my5G-RANTester/config" ]