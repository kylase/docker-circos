FROM ubuntu:14.04
MAINTAINER kylase@outlook.com

RUN apt-get update
RUN ln -s /usr/bin/env /bin/env

RUN apt-get -y -q install build-essential libgd2-xpm-dev wget

RUN cpan install Clone Config::General Font::TTF List::MoreUtils Math::Bezier Math::VecStat Math::Round Params::Validate Readonly Regexp::Common Set::IntSpan Text::Format GD

RUN wget http://circos.ca/distribution/circos-0.66.tgz
RUN tar xfz circos-0.66.tgz