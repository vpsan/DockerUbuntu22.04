# DockerUbuntu22.04

Dockerfile with Ubuntu 22.04, CMake, Boost, GTest, oh-my-zsh

## Table of Contents

- [Installation &amp; Usage](#usage)
- [License](#license)

## Installation & Usage

1. Clone the repo:

   ```sh
   git clone https://github.com/vpsan/DockerUbuntu22.04.git
   ```
2. Navigate to the project directory:

   ```sh
   cd DockerUbuntu22.04
   ```
3. Install docker:

   ```sh
   https://docs.docker.com/engine/install/
   ```
4. Build the Docker image:

   ```sh
   sudo docker build -t ubuntu_22_04_image .
   ```

   or pull it:

   ```sh
   docker image pull [OPTIONS] NAME[:TAG|@DIGEST]
   ```
5. Run the Docker container with volume referring:

   ```sh
   docker run -it --name ubuntu_22_04_container -v $(pwd):/data:ro ubuntu_22_04_image /bin/zsh
   ```
6. Stop the Docker container:

   ```sh
   docker container stop ubuntu_22_04_container
   ```
7. Restart the existing container:

   ```sh
   docker start ubuntu_22_04_container
   ```
8. Attach to the running container:

   ```sh
   docker exec -it ubuntu_22_04_container /bin/zsh
   ```

## License

Distributed under the MIT License. See `LICENSE` for more information.
