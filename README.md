# GitOps Web App Deployment with Argo CD 🚀

An advanced DevOps project demonstrating a complete GitOps lifecycle. This project automates the deployment of a web application to a Kubernetes cluster, ensuring that the infrastructure is always in sync with the configuration stored in GitHub.

---

## 🛠️ Tech Stack & Tools

### 🐧 Operating Systems
- ![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
- ![Debian](https://img.shields.io/badge/Debian-D70A53?style=for-the-badge&logo=debian&logoColor=white)

### 🐳 Virtualization & Containers
- ![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
- ![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white)

### 🔄 CI/CD & GitOps
- ![ArgoCD](https://img.shields.io/badge/Argo%20CD-EF7B4D?style=for-the-badge&logo=argo&logoColor=white)
- ![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)

---

## 🏗️ Project Architecture

The project follows the **GitOps** principle:
1. **Source Control**: All Kubernetes manifests (Deployments, Services) are stored in this GitHub repository.
2. **Continuous Deployment**: Argo CD monitors the `k8s/` directory.
3. **Automated Sync**: Any changes pushed to GitHub are automatically applied to the Kubernetes cluster.

---

## 🔧 Challenges & Solutions

During the implementation, several technical hurdles were overcome:

* **Permission Denied Errors**: Encountered `PermissionDenied` when creating apps via Argo CD CLI.
    * **Solution**: Successfully bypassed this by using `kubectl` to apply the Application manifest directly, leveraging cluster-admin privileges.
* **Environment Setup**: Fixed issues where the `argocd` binary was not found or not in the PATH.
    * **Solution**: Correctly installed the binary to `~/bin` and exported the PATH.
* **Connectivity**: Resolved `connection refused` errors by setting up proper port-forwarding to the Argo CD server.

---

## 🚀 Deployment Status

The project is officially **Running** and stable.

* **Application**: `my-web-app`
* **Pod Status**: `1/1 Running`
* **Sync Policy**: Automated (Prune & Self-Heal)

---

## 📝 How to run
1. Ensure your K8s cluster is active.
2. Install Argo CD.
3. Apply the application manifest:
   ```bash
   kubectl apply -f application.yaml
