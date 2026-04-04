# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a single-file Bash CLI tool (`create-my-next-app.sh`) that scaffolds a Next.js project by:
1. Creating a public GitHub repository via the GitHub CLI (`gh`)
2. Initializing a Next.js app in that directory using `npx create-next-app@latest`
3. Making an initial commit and pushing to GitHub

## Usage

```bash
bash create-my-next-app.sh <project-name>
```

## Dependencies

The script requires `gh` (GitHub CLI), `git`, and `npx` to be installed and available on PATH. It checks for all three at startup and exits with an error if any are missing.

## Key Behaviors

- Takes a single positional argument (`$1`) as the project name — exits with usage hint if omitted.
- Runs `gh repo create` with `--public --confirm` flags, creating the repo under the authenticated GitHub user's account.
- Uses `||` error guards on each major step; failures print a message and exit.
- The success message URL uses a literal `\$USER` (escaped), so it prints the shell's `$USER` env var at runtime, not the GitHub username.
