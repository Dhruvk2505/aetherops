.PHONY: dev web api compose up down

dev: ## Run API + Vite (two terminals recommended: `make api` and `make web`)
	@echo "Run: make api   (terminal 1)   &&   make web   (terminal 2)"

web:
	cd apps/web && npm run dev

api:
	cd services/edge-gateway && pip install -q -r requirements.txt && uvicorn main:app --reload --port 8080

compose:
	cd infra && docker compose up --build

down:
	cd infra && docker compose down
