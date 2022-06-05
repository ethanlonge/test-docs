FROM squidfunk/mkdocs-material AS mkdocs
WORKDIR /docs
COPY . .
RUN mkdocs build

FROM nginx
COPY --from=mkdocs /docs/site/ /usr/share/nginx/html
EXPOSE 80
