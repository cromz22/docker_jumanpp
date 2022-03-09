FROM alpine:latest

RUN apk add --no-cache curl \
	xz \
	alpine-sdk \
	cmake \
	libexecinfo-dev

RUN cd /root \
	&& curl -L -o jumanpp-2.0.0-rc3.tar.xz https://github.com/ku-nlp/jumanpp/releases/download/v2.0.0-rc3/jumanpp-2.0.0-rc3.tar.xz \
	&& tar Jxf jumanpp-2.0.0-rc3.tar.xz \
	&& cd jumanpp-2.0.0-rc3 \
	&& mkdir bld \
	&& cd bld \
 	&& cmake .. .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local/ \
 	&& make install -j 8
