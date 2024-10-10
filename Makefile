build:
	docker buildx build --platform linux/amd64,linux/arm64 -t slspeek/r-plotly .

test: build
	docker run slspeek/r-plotly R -q -e "library(plotly)"

.ONESHELL:
push: test
	docker login
	docker push slspeek/r-plotly
