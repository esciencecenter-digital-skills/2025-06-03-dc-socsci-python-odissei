.PHONY: serve docker-serve

serve:
	bundle config set --local path 'vendor/bundle'
	bundle install
	bundle exec jekyll serve

docker-serve:
	docker run --rm -it -p 4000:4000 -v $$PWD:/srv/jekyll jekyll/jekyll:4 jekyll serve

podman-serve:
	podman run --rm -it --userns=keep-id -p 4000:4000 -v $$PWD:/srv/jekyll:z jekyll/jekyll:4 jekyll serve
