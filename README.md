**Instructions on how to set up and run the application locally:**
  
  **Python Requirements:**
  - Python version: Python 3.12.6
  - Install Flask using _pip install Flask_
  
  **Tools Required:**
  - Git: Install Git from https://git-scm.com/downloads
  - GitHub Actions: Automates the CI/CD process.
  - Docker: Install Docker from https://www.docker.com/products/docker-desktop/.
  - DockerHub: https://hub.docker.com/
  - Visual Studio Code: https://code.visualstudio.com/download
  
  **Steps to Run Application Locally:**
  1. Clone the repository: 
     - git clone https://github.com/Priyanka-polimera/Task_web_app.git
     - cd Task_web_app
  2. Run the Application using Flask:
     python app.py
  3. Access the Application:
     - Application should be running on http://localhost:5000.
     - Visit this URL and you see the "Hello, World!" message.

**Overview of the CI/CD pipeline:**

  The CI/CD pipelie is automated using **GitHub Actions.** The pipeline is designed to:
  
  1. **Build**:
     GitHub Actions automatically triggers a build process on every commit or pull request, ensuring the application builds      successfully by installing all necessary dependencies.

  2. **Test**:
     Once the build is successful, the pipeline runs the unit tests to verify the fucntionality of the application. This 
     ensures no broken code is deployed to production.
     
  3. **Docker Build**:
     After the tests pass, a Docker image is built using the Dockerfile in the repository. This image containerizes the 
     application for a consistent runtime environment.
     
  4. **Push to Docker Hub:**
     The built Docker image is tagged and pushed to Docker Hub. This ensures that the image is accessible from any 
     environment for deployment.
     
  5. **Deploy:**
     Once the Docker image is pushed, deploy the Docker container. It ensures the application runs correctly within the 
     container.
     
   **GitHub Actions** workflow file is located at .github/workflows/ci.yml which defines the pipeline.

**Details on the Dockerfile:**
 
  The Dockerfile is used to containerize the web application, ensuring it can run in a consistent environment.
 
  <img width="301" alt="image" src="https://github.com/user-attachments/assets/f01087fa-f96b-4132-9459-7fe544d0c971">
  
  Explanation:
  - The **FROM** statement pulls a lightweight Python image to use as the base environment.
  - The **WORKDIR** sets the working directory within the container to **/app**.
  - The **COPY** command copies all files from the current directory to the container.
  - The application will run on port **5000**, and the **CMD** directive defines how the Flask application will be started.

**Challenges faced:**

