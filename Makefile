up:
	docker-compose up -d
down:
	docker-compose down -v

git-push:
	@$(eval message=$(filter-out $@, $(MAKECMDGOALS)))
	echo 'push master with message: ${message}'
	git add .
	git commit -m '$(message)'
	git push origin master