push:
	git add .
	git commit -m "$(shell date +%Y-%m-%d_%H:%M:%S)"
	git push -f