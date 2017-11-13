cd crystax-ndk-10.3.1/sources
curl -L -o openssl.tar.gz https://github.com/named-data-mobile/crystax-prebuilt-openssl/archive/crystax-10.3.1.tar.gz
tar zx --strip-components 1 -C openssl -f openssl.tar.gz
rm openssl.tar.gz
