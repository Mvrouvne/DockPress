## DockPress: Project Overview

DockPress is a project that sets up a small infrastructure with various services under specific rules using Docker Compose. Each service runs in its dedicated container, built from custom Docker images using Debian. The setup includes:

- An NGINX container with TLSv1.2 or TLSv1.3
- A WordPress container with php-fpm
- A MariaDB container
- Volumes for the WordPress database and website files
- A docker-network for container communication

The containers are configured to restart on crash, and all services are interconnected through a secure network setup. Environment variables and a .env file manage configurations, ensuring no passwords are stored directly in Dockerfiles. The NGINX container serves as the sole entry point via port 443, secured with TLSv1.2 or TLSv1.3.
