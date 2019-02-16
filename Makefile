all: test-0.2.19 test-0.3.5

test-0.2.19: openblas-0.2.19/Dockerfile
	cd openblas-0.2.19; docker build --tag rundel/rocker_openblas_test:0.2.19 .
	
test-0.3.5: openblas-0.3.5/Dockerfile
	cd openblas-0.3.5; docker build --tag rundel/rocker_openblas_test:0.3.5 .

.PHONY: test-0.2.19 test-0.3.5
