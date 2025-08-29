run:
	@uvicorn workout_api.main:app --reload

run-docker:
	@docker compose up -d

create-migrations:
	poetry run alembic revision --autogenerate -m "$(d)"

run-migrations:
	poetry run alembic upgrade head