# Repository Cloning Script

This script allows you to clone all GitHub repositories from the command line using GitHub CLI. It can also be used as a tool for local repository backups by cloning repositories to your local machine.

## Requirements

- [GitHub CLI](https://cli.github.com/) installed and configured
- [jq](https://stedolan.github.io/jq/) installed (for parsing JSON)

## Usage

1. Clone this repository or download the `clone_repos.sh` script.

2. Make the script executable:
   ```bash
   chmod +x clone_repos.sh
   ```
3. Run the script:
   ```bash
    ./clone_repos.sh [--dir <directory>]
   ```
   - If --dir option is provided, repositories will be cloned to the specified directory. If not provided, repositories will be cloned to the current directory.

4. Sit back and watch as the script clones the repositories for you!

## Example

Clone repositories to a specific directory:
```bash
./clone_repos.sh --dir ~/my_projects
```

## Notes
- This script is currently written in Bash and may not be fully compatible with all operating systems. 
- Consider rewriting it in a more cross-platform language like Python for broader compatibility.
- If you encounter any issues or have suggestions for improvements, feel free to [open an issue](https://github.com/qhamid/repo-cloning-script/issues).

PRs are welcome!

Happy cloning!
