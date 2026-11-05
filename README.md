# Docker Networking Practice

## Objective
Create a custom bridge network and connect two containers.

## Create Network
docker network create my-bridge-network

## Create Container 1
docker run -dit --name container1 --network my-bridge-network alpine

## Create Container 2
docker run -dit --name container2 --network my-bridge-network alpine

## Test Communication
docker exec -it container1 ping -c 4 container2

docker exec -it container2 ping -c 4 container1

## Network Verification
docker network inspect my-bridge-network

## Results
Both containers communicated successfully using container names.
Packet loss: 0%.
