# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This project contains two Bash scripts for scaffolding and installing a Next.js project CLI tool.

### `create-my-next-app.sh`

The main CLI script that:
1. Validates dependencies (`gh`, `git`, `npx`) and GitHub CLI authentication
2. Sets GitHub CLI to use SSH for the remote
3. Creates a public GitHub repository via the GitHub CLI (`gh`) and clones it locally
4. Initializes a Next.js app in that directory using `npx create-next-app@latest`
5. Makes an initial commit and pushes to GitHub

### `setup-cli.sh`

An installer script that copies `create-my-next-app.sh` to `/usr/local/bin/create-my-next-app`, making it available as a global command. Requires `sudo` and assumes `/usr/local/bin` exists.

## Usage

```bash
# Install globally
bash setup-cli.sh

# Run directly
bash create-my-next-app.sh <project-name>

# Run after global install
create-my-next-app <project-name>
```

## Dependencies

Both scripts require `gh` (GitHub CLI), `git`, and `npx` to be installed and available on PATH. `create-my-next-app.sh` checks for all three at startup and exits with an error if any are missing, and also verifies `gh auth` status.

## Key Behaviors

- Takes a single positional argument (`$1`) as the project name — exits with usage hint if omitted.
- Forces SSH protocol for GitHub via `gh config set git_protocol ssh`.
- Runs `gh repo create` with `--public --clone` flags, creating and cloning the repo under the authenticated GitHub user's account.
- Uses `||` error guards on each major step; failures print a message and exit.
