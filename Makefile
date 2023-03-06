
check-tag:
ifndef TAG
	$(error TAG is required)
endif

##amd / arm
check-os:
ifndef PLATFORM
	$(error PLATFORM is required)
endif

make build: check-tag check-os
	docker buildx build  --platform linux/${PLATFORM} --no-cache -t blusik99/iceo-app:$(TAG) -f ./docker/Dockerfile .

make helm-lint:
	ls iceo-app/ | xargs -I {} helm lint "iceo-app/{}"

make helm-template:
	ls iceo-app/ | xargs -I {} helm template "iceo-app/{}"

make helm-install:
	helm install iceo-app iceo-app