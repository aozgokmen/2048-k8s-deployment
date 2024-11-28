# 2048 Kubernetes Deployment

This repository contains the files to deploy the 2048 game on a local Kubernetes cluster using KIND.

## Steps to Deploy

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/2048-k8s-deployment.git
   cd 2048-k8s-deployment
   ```

2. **Build the Docker image**:
   ```bash
   docker build -t 2048-game:latest .
   ```

3. **Create a KIND cluster**:
   ```bash
   kind create cluster --name 2048-cluster --config k8s/kind-config.yaml
   ```

4. **Load the image into KIND**:
   ```bash
   kind load docker-image 2048-game:latest --name 2048-cluster
   ```

5. **Apply Kubernetes configurations**:
   ```bash
   kubectl apply -f k8s/deployment.yaml
   kubectl apply -f k8s/service.yaml
   ```

6. **Access the game**:
   Open your browser and go to:
   ```
   http://localhost:30000
   ```

## Project Structure

- **`src/`**: Static game files (HTML, CSS, JS).
- **`k8s/`**: Kubernetes configuration files (deployment, service).
- **`Dockerfile`**: For building the Docker image.

## Notes

- Make sure Docker, Kubernetes (`kubectl`), and KIND are installed on your system.
- Use `kubectl logs <pod-name>` to debug any issues.

Enjoy the game!

<img width="1507" alt="image" src="https://github.com/user-attachments/assets/9041b6a1-bd88-4611-90d3-f62f9cba740c">
