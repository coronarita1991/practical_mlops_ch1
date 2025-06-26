.PHONY: lint test format all

lint:
	isort . && black --check .

test:
	pytest tests/

format:
	isort . && black .

all: format lint test