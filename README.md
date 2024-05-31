# rastokme DevOps MDE Rastislav Kmet Project

## Overview

In this project, an CI/CD pipeline with Docker and Ansible is set up. It is an application with backend API, proxy, network and a frontend web server, it si completely deployed by using containerization.

## Repository Structure

Structure od the directory is as following:
```plaintext
tp1/
├── ansible
│   ├── inventories
│   │   └── setup.yml
│   ├── playbook.yml
│   └── roles
│       ├── docker
│       │   └── tasks
│       │       └── main.yml
│       ├── create_network
│       │   └── tasks
│       │       └── main.yml
│       ├── database
│       │   └── tasks
│       │       └── main.yml
│       ├── backend
│       │   └── tasks
│       │       └── main.yml
│       └── proxy
│           └── tasks
│               └── main.yml
├── backend
├── db-init
├── docker-compose.yml
├── httpd
├── simple-api
├── springboot-app
└── README.md
```

## Setup and Deployment

### Prerequisites

- Docker
- Ansible

### Run the pipeline
In order to run the CI/CD pipeline you need to build and push docker images

docker-compose up -d --build --force-recreate

Next step is deployment using ansible, in our case from wsl machine.

ansible-playbook -i ansible/inventories/setup.yml ansible/playbook.yml


### Clone the Repository

```sh
git clone https://github.com/rastokme/tp1.git
cd tp1
```

