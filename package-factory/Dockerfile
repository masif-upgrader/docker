FROM debian:testing-slim
SHELL ["/bin/bash", "-exo", "pipefail", "-c"]

RUN apt-get update ;\
	DEBIAN_FRONTEND=noninteractive apt-get install --no-install-{recommends,suggests} -y \
		ruby{,-dev,-ffi} make gcc libc6-dev git golang-go ;\
	apt-get clean ;\
	rm -vrf /var/lib/apt/lists/*

RUN gem install fpm

COPY build.sh /

CMD ["/build.sh"]
