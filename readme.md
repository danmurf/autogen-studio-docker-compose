# AutoGen Studio with Docker Compose

## Overview

This README provides instructions for installing, configuring, and managing the AutoGen Studio application using Docker Compose. For more information about AutoGen Studio, visit: https://microsoft.github.io/autogen/blog/2023/12/01/AutoGen Studio/

## Prerequisites

Make sure you have the following:

- Docker
- Docker Compose
- An OpenAI API Key.

## Installation

1. Clone the repository to your local machine:

```bash
git clone https://github.com/danmurf/autogen-studio-docker-compose.git
```

2. Navigate to the project directory:

```bash
cd autogen-studio-docker-compose
```

3. Create the environment file `.env` by copying the example file:

```bash
make .env
```

Customize the generated `.env` file with your desired configuration, including your OpenAI API key.

4. Build and start the AutoGen Studio application using Docker Compose:

```bash
docker-compose up
```

## Important Note

Please be mindful of your OpenAI API key usage when using AutoGen Studio. Excessive API usage may result in high charges. By using this application, you acknowledge and accept responsibility for monitoring and controlling your API usage.
