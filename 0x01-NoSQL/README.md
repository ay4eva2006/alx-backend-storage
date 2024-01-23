# NoSQL Directory

## Overview

This directory contains materials related to NoSQL databases, particularly MongoDB. 

## Contents

- **0x01-NoSQL**
  - **README.md**: This file
  - **alx-backend-storage/**
    - `0x00-MySQL_Advanced`
    - `README.md`

## MongoDB Installation Guide

1. **Add MongoDB Repository Key:**
    ```bash
    sudo wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
    ```

2. **Add MongoDB Repository:**
    ```bash
    sudo echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
    ```

3. **Update Package List:**
    ```bash
    sudo apt-get update
    ```

4. **Install MongoDB:**
    ```bash
    sudo apt-get install -y mongodb-org
    ```

5. **Start MongoDB Service:**
    ```bash
    sudo systemctl start mongod
    ```

6. **Enable MongoDB to Start on Boot:**
    ```bash
    sudo systemctl enable mongod
    ```

7. **Check MongoDB Status:**
    ```bash
    sudo systemctl status mongod
    ```

## Exiting MongoDB Shell

To exit the MongoDB shell, use either of the following commands:

```bash
quit()

