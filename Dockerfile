FROM ubuntu:jammy

ENV DEBIAN_FRONTEND noninteractive
ENV TEXMFCACHE /tmp/texmf/

RUN apt update -q; \
    apt install -qy \
        texlive-latex-base \
        texlive-latex-recommended \
        texlive-luatex \
        texlive-lang-german \
        texlive-fonts-extra; \
    rm -rf /var/lib/apt/lists/*; \
    luaotfload-tool --update

WORKDIR /data
VOLUME ["/data"]
