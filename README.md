Caching Proxy for a Public S3 Bucket
====================================

Easy hack to reduce cross-region transfer.


docker build --no-cache -t nginx-s3-proxy .

docker run --rm -p 8080:80 -v `pwd`/cache:/var/cache/nginx nginx-s3-proxy


