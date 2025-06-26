.PHONY: lint test format all

lint:
	isort . && black --check .

test:
	pytest tests/

format:
	isort . && black .

add:
	python3 -c "from app.add import add; print(add(3, 5))"

serve:
	uvicorn app.main:app --reload

all: format lint test