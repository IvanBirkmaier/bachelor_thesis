#Builds frontend
.PHONY: frontend
frontend:
	npx nx serve frontend

#Builds backend
.PHONY: backend
backend:
	npx nx serve backend

#Deletes all existend Docker-Container
.PHONY: deleteC
deleteC:
	 docker rm -vf $(docker ps -aq)

#Stops all running Docker-Container
.PHONY: stopC
stopC:
	docker kill $(docker ps -q)

# Deletes all existend Docker-Images
.PHONY: deleteI
deleteI:
	docker rmi -f $(docker images -aq)
