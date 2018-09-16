docker pull linkeddatacenter/sdaas-ce:latest > /dev/null
docker run --name sdaas -d -p 8889:8080 -v /root:/workspace linkeddatacenter/sdaas-ce
ssh root@host01 "chmod +rwX /workspace"
docker exec -ti sdaas bash

