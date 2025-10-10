# Food Fusion 

A simple collaborative project created for **DEVOPS Fall 2025 Deliverable 1** to practice Git & GitHub workflows including branching, commits, pull requests, and merges.


##  Project Title
Food Fusion


## Group Members
- **Amna Jamil** — Contributor  
- **Nimra Gul** — Contributor  
- **Sabahat Qadeer** — Team Leader (responsible for uploading project on GitHub)  



##  Roles & Responsibilities
- **Sabahat Qadeer**  
  - Repository creation & setup  
  - Upload initial project code  

  **Nimra Gul** 
  -cloned and updated app.js 
  -changed hellow world to hello world Nimra Gul

 **Amna jamil** 
  -cloned and updated app.js 
  -changed to Hello World ........it's amna here hyeeee

   **Nimra Gul** **Amna Jamil** 
  -Created workflow


## CI/CD Pipeline 
we perform GitHub Actions to build a Docker image, run tests, push the image to Docker Hub, and deploy to an AWS EC2 instance via SSH automatically when code is pushed/PR merged to `main`.

## How to run locally
1. Build: `docker build -t <dockerhub_user>/<repo>:local .`
2. Run: `docker run --rm -p 3000:3000 <dockerhub_user>/<repo>:local`

## How pipeline works
- Trigger: push to `main` or merged PR
- Build: build image using Docker Buildx
- Test: run containerized tests
- Push: push image to Docker Hub (secrets used)
- Deploy: SSH to EC2 and restart container

## Changelog
- 2025-10-10: Added CI/CD workflow and deployment scripts.

  