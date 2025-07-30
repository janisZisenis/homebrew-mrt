# homebrew-mrt

Homebrew tap for the Multi Repository Tool (mrt) CLI.

## What is MRT?

The *Multi Repository Tool* is a command-line utility designed to streamline the management of multiple repositories within a team. It allows you to:

- Automatically clone a predefined list of team repositories
- Automatically execute custom setup scripts (aka *setup commands*)
- Manage Git hooks and rules across multiple or individual repositories
- Effortlessly execute automation scripts (aka *run commands*) on your local machine or within your CI/CD pipeline

## Installation

### Using Homebrew

```bash
# Add the tap
brew tap janisZisenis/mrt

# Install MRT
brew install janisZisenis/mrt/cli
```

### Verification

After installation, verify that MRT is installed correctly:

```bash
mrt version
```

## Usage

For detailed usage instructions, please see the [MRT CLI documentation](https://github.com/janisZisenis/mrt-cli).

### Quick Start

1. Create a team directory with a `team.json` file
2. Run `mrt setup all` to set up your repositories

## License

This project is licensed under the MIT License. See the [LICENSE](https://github.com/janisZisenis/mrt-cli/blob/main/LICENSE) file for details.
