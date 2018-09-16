ssh root@host01 "docker pull linkeddatacenter/sdaas-ce:latest"
ssh root@host01 "docker run --name sdaas -d -p 8889:8080 -v PWD/.:/workspace linkeddatacenter/sdaas-ce"
ssh root@host01 "docker exec sddas bash"
