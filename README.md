# SimpleTimeService

A lightweight Node.js service that returns the current timestamp and visitor IP. Containerized with Docker for simple deployment.

# Step 1: How to Build

bash
docker build -t simpletimeservice .

# Step 2: How to Run
bash
docker run simpletimeservice

# Step 3: Verifying the Service
To test from inside the container:

Get the container ID: 
bash
docker ps

# Step 4: Exec into the container:

bash
docker exec -it <container_id> curl http://localhost:3000

# Step 5: if you wish to access it from your host: Accessing from Host Machine

To access the service from your browser or tools like curl on your host machine, run the container with port mapping:

bash
docker run -p 3000:3000 simpletimeservice

****Then open your browser and go to: http://localhost:3000****
