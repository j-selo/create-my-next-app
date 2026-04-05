# Create My Next App CLI

A Bash CLI tool that scaffolds a Next.js project and pushes it to a new GitHub repository in one command.

## Prerequisites

- [GitHub CLI (`gh`)](https://cli.github.com/) — authenticated with your GitHub account
- `git`
- `npx` (comes with Node.js)

## Installation

Run the setup script to install the CLI globally to `/usr/local/bin`:

```bash
bash setup-cli.sh
```

This copies `create-my-next-app.sh` to `/usr/local/bin/create-my-next-app` so you can run it from anywhere.

## Usage

If installed globally:

```bash
create-my-next-app <project-name>
```

Or run directly without installing:

```bash
bash create-my-next-app.sh <project-name>
```

This will:
1. Set GitHub CLI to use SSH for the remote
2. Create a new public GitHub repository named `<project-name>` and clone it locally
3. Initialize a Next.js app in that directory via `create-next-app`
4. Commit and push the initial project to GitHub
