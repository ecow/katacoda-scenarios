docker pull linkeddatacenter/sdaas-ce:latest
docker run --name sdaas -d -p 8889:8080 -v /root:/workspace linkeddatacenter/sdaas-ce
ssh root@host01 "chmod +rwX /root"
