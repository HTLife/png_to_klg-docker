default: pngtoklg

.PHONY: pngtoklg

pngtoklg:
docker build -f Dockerfile -t pngtoklg .
