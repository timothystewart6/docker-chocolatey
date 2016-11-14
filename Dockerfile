FROM debian:jessie
MAINTAINER telyn <telyn@bytemark.co.uk>

ENV CHOCO_VERSION=0.9.9.12

RUN apt-get update && apt-get install -y \
	mono-runtime \
	libmono-system-core4.0-cil \
	libmono-system-componentmodel-dataannotations4.0-cil \
	libmono-windowsbase4.0-cil \
	libmono-system-xml-linq4.0-cil \
	wget \
	unzip && \
	wget https://packages.chocolatey.org/chocolatey.$CHOCO_VERSION.nupkg && \
	unzip chocolatey.$CHOCO_VERSION.nupkg && \
	mv tools/chocolateyInstall/choco.exe /usr/bin && \
	rm -rf chocolatey.nuspec _rels tools

