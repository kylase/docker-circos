FROM ubuntu:23.04

ENV VERSION=0.69-9

RUN mkdir -p /workspace
WORKDIR /workspace

RUN apt-get update && apt-get install -y \
    build-essential \
    cpanminus \
    libgd-dev \
    wget \
    && rm -rf /var/lib/apt/lists/*

RUN cpanm Clone \ 
    Config::General \
    Font::TTF::Font \ 
    GD \
    GD::Polyline \
    Math::Bezier \
    Math::Round \
    Math::VecStat \
    Params::Validate \
    Readonly \
    Regexp::Common \
    SVG \
    Set::IntSpan \
    Statistics::Basic \
    Text::Format

RUN wget https://circos.ca/distribution/circos-${VERSION}.tgz -O - | tar -xz -C /usr/lib
RUN ln -s /usr/lib/circos-${VERSION}/bin/circos /usr/local/bin/circos