docker pull linkeddatacenter/sdaas-ce:latest
docker run --name sdaas -d -p 8889:8080 -v $PWD/.:/workspace linkeddatacenter/sdaas-ce