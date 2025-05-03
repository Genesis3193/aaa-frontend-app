download:
	@python3.12 -c "from lib.models import get_model; get_model()" 1>/dev/null

test:
	@python3.12 -m pytest -v

fmt:
	@ruff check --fix lib tests
	@ruff format lib tests

lint:
	@ruff check lib tests

dev:
	@python3.12 -m fastapi dev lib/app.py