FROM debian:stable-slim
SHELL ["/bin/bash", "-exo", "pipefail", "-c"]

COPY unstable.list /etc/apt/sources.list.d/
COPY unstable.pref /etc/apt/preferences.d/

RUN apt-get update ;\
	DEBIAN_FRONTEND=noninteractive apt-get install --no-install-{recommends,suggests} -y \
		ruby{,-dev,-ffi} make gcc libc6-dev git ;\
	DEBIAN_FRONTEND=noninteractive apt-get install --no-install-{recommends,suggests} -y \
		-t unstable golang-go ;\
	apt-get clean ;\
	rm -vrf /var/lib/apt/lists/*

RUN gem install fpm

COPY build.sh /

CMD ["/build.sh"]
