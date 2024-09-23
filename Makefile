build:
	docker build . -t slspeek/r-plotly

test: build
	docker run slspeek/r-plotly R -q -e "library(plotly)"