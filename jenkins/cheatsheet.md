# Jenkins Cheatsheet

## Introduction

- Jenkins: Open-source automation server.
- Facilitates building, deploying, and automating projects.
- Key features: extensibility, easy configuration, distributed builds.

## Installation

- Follow the [official Jenkins installation guide](https://www.jenkins.io/doc/book/installing/).
- Install necessary plugins during setup.

## Basic Concepts

### Master

- Main Jenkins server managing jobs.
- Hosts the web interface and manages build jobs.

### Node/Slave

- Machine configured to offload builds from the master.
- Distributes build tasks to parallelize work.

### Job

- Basic unit of work in Jenkins.
- Defines what to build, how to build it, and actions afterward.

## Creating Jobs

### Freestyle Project

1. **New Item > Freestyle Project**
2. Configure project details.
3. **General settings**:
   - Description, discard old builds.
4. **Source Code Management**:
   - Git, SVN, etc.
   - **Example (Git)**:
     ```yaml
     Repository URL: https://github.com/example/repo.git
     Branches to build: */main
     Credentials: Jenkins Secret Text (for Git credentials)
     ```
5. **Build**:
   - Shell commands, Windows batch commands.
   - **Example (Shell)**:
     ```bash
     #!/bin/bash
     echo "Building..."
     ```
6. **Build Environment**:
   - Add timestamps, clean workspace.
7. **Post-build Actions**:
   - Archive artifacts, email notifications.
   - **Example (Archive Artifacts)**:
     ```yaml
     Files to archive: target/*.jar
     ```
   - **Example (Email Notification)**:
     ```yaml
     Recipient List: user@example.com
     ```

### Pipeline Project

1. **New Item > Pipeline**
2. Write pipeline script in Groovy DSL.
3. Define stages, steps, and post-actions.
   - **Example**:
     ```groovy
     pipeline {
         agent any
         stages {
             stage('Build') {
                 steps {
                     echo 'Building...'
                 }
             }
             stage('Test') {
                 steps {
                     echo 'Testing...'
                 }
             }
             stage('Deploy') {
                 steps {
                     echo 'Deploying...'
                 }
             }
         }
     }
     ```

## Build Triggers

- **Poll SCM**: Periodically checks for changes.
  - **Example**:
    ```yaml
    */5 * * * *
    ```
- **Build after other projects**: Trigger a job after another job.
  - **Example**:
    ```yaml
    Downstream Project: ProjectB
    ```

## Source Code Management

### Git

- **Repository URL**: Git repository URL.
- **Branches to build**: Specify branches.
- **Credentials**: Manage authentication.
  - **Example**:
    ```yaml
    Repository URL: https://github.com/example/repo.git
    Branches to build: */main
    Credentials: Jenkins Secret Text (for Git credentials)
    ```

### Subversion

- **Repository URL**: SVN repository URL.
- **Local module directory**: Set a local directory.
  - **Example**:
    ```yaml
    Repository URL: https://svn.example.com/repo/trunk
    Local module directory: trunk
    ```

## Build Environment

- **Add timestamps to Console Output**: Include timestamps.
  - **Example**:
    ```yaml
    # Add timestamps to console output
    export BUILD_ID=2023-12-16_12-30-00
    ```
- **Delete workspace before build starts**: Ensure a clean workspace.
  - **Example**:
    ```yaml
    rm -rf workspace/*
    ```

## Build Steps

### Shell/Batch Commands

- Execute commands directly.
  - **Example (Shell)**:
    ```bash
    #!/bin/bash
    echo "Hello, Jenkins!"
    ```

### Execute Windows batch command

```batch
echo Hello, Jenkins!
```
