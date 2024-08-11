# Task

Organized the files and workflows as follows:

```
greenbone/
│
├── .github/
│    └── workflows/
│          ├── change-tag.yml
│          ├── docker-publish.yml
|          ├── reusable-workflow.yml
│          └── main.yml
| 
└── your-file.txt
└── Dockerfile
└── README.md
```

### Explanation:

1. **`.github/`**: This is the standard directory where GitHub Actions workflows are stored.

   - **`workflows/`**: This directory contains all your GitHub Actions workflow files.

     - **`change-tag.yml`**: Contains the GitHub Action to change a line in the text file from "tag 1" to "tag 2" and commit the changes. 

     - **`reusable-workflow.yml`**: Contains the reusable workflow that calls `change-tag.yml`. This file allows for the reuse of the tag-changing action across different workflows.

     - **`main.yml`**: Contains the workflow that triggers the reusable workflow, typically based on events like pushes to the `master` branch.

     - **`docker-publish.yml`**: It contains building the Docker image, login and push it to ghcr.io, typically based on events like pushes to the `master` branch.

2. **`your-file.txt`**: This is the text file in your repository where the tag change will occur.

3. **`Dockerfile`**: The Dockerfile specifies how the Docker image is built, including copying the text file into the image.
