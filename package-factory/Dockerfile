FROM golang
SHELL ["/bin/bash", "-exo", "pipefail", "-c"]

RUN apt-get update ;\
	DEBIAN_FRONTEND=noninteractive apt-get install --no-install-{recommends,suggests} -y ruby{,-dev,-ffi} ;\
	apt-get clean ;\
	rm -vrf /var/lib/apt/lists/*

RUN gem install fpm

COPY build.sh /

CMD ["/build.sh"]
