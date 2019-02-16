all: test-0.2.19 test-0.3.5

test-0.2.19: openblas-0.2.19/Dockerfile
	docker build --rm --tag rundel/rocker_openblas_test:0.2.19 -f openblas-0.2.19/Dockerfile .
	docker push rundel/rocker_openblas_test:0.2.19
	
test-0.3.5: openblas-0.3.5/Dockerfile
	docker build --rm --tag rundel/rocker_openblas_test:0.3.5 -f openblas-0.3.5/Dockerfile .
	docker push rundel/rocker_openblas_test:0.3.5

.PHONY: test-0.2.19 test-0.3.5
