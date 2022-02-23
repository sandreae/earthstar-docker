.PHONE: docker

docker: 
	docker build -t earthstar-replica-server . && docker run -v $(shell pwd)/allow_list.json:/app/allow_list.json -v data:/app/data -it --init -p 8080:8080 earthstar-replica-server