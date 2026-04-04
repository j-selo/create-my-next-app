# Create My Next App CLI

A Bash CLI tool that scaffolds a Next.js project and pushes it to a new GitHub repository in one command.

## Prerequisites

- [GitHub CLI (`gh`)](https://cli.github.com/) — authenticated with your GitHub account
- `git`
- `npx` (comes with Node.js)

## Usage

```bash
bash create-my-next-app.sh <project-name>
```

This will:
1. Create a new public GitHub repository named `<project-name>`
2. Initialize a Next.js app in that directory via `create-next-app`
3. Commit and push the initial project to GitHub
