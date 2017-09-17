# Goanywhere Docker


# To run

docker run -i -d -p8888:8000 --name goanywhere --entrypoint "/bin/bash" goanywhere

docker exec goanywhere /bin/bash goanywhere.sh start

## Confirm started

docker exec goanywhere ps -ef

# Test in browser

http://localhost:8888/goanywhere/
