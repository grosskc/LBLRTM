rs-lblrtm:
	docker build --tag rs/lblrtm:latest -f Dockerfile ./
	docker save "rs/lblrtm:latest" > rs-lblrtm-latest.tar && gzip -f rs-lblrtm-latest.tar && mv rs-lblrtm-latest.tar.gz ../
