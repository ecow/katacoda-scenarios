echo "Installing SDaaS platform..."
ssh root@host01 "docker pull linkeddatacenter/sdaas-ce:latest" > /dev/null
ssh root@host01 "docker run --name sdaas -d -p 8889:8080 -v /root:/workspace linkeddatacenter/sdaas-ce" > /dev/null
ssh root@host01 -t "docker exec -ti sdaas bash"

