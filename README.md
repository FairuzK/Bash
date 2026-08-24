# Bash Learning & Automation

Simple notes, commands, and practical examples for learning Bash as part of a DevOps journey.

## Why Bash?

Bash is a command-line shell used on Linux and macOS. In DevOps, it helps automate repetitive work such as backups, deployments, log checks, and server maintenance.

## Quick Start

Create a file called `hello.sh`:

```bash
#!/usr/bin/env bash

echo "Hello, DevOps!"
```

Make it executable and run it:

```bash
chmod +x hello.sh
./hello.sh
```

## Basic Commands

| Command | What it does |
| --- | --- |
| `pwd` | Shows the current folder. |
| `ls -la` | Lists files, including hidden files. |
| `cd folder-name` | Moves into a folder. |
| `mkdir project` | Creates a folder. |
| `touch file.txt` | Creates an empty file. |
| `cp source target` | Copies a file. |
| `mv old new` | Moves or renames a file. |
| `rm file.txt` | Deletes a file. Use carefully. |
| `cat file.txt` | Prints a file's contents. |
| `grep "text" file.txt` | Finds text in a file. |

## Variables and Input

```bash
#!/usr/bin/env bash

NAME="Ada"
echo "Hello, $NAME"

echo "Enter your environment:"
read -r ENVIRONMENT
echo "Deploying to $ENVIRONMENT"
```

Use arguments when running a script:

```bash
#!/usr/bin/env bash

echo "Application: $1"
echo "Environment: $2"
```

```bash
./deploy.sh my-app staging
```

## Conditions and Loops

Check whether a file exists:

```bash
if [ -f "config.yml" ]; then
  echo "Configuration found"
else
  echo "Configuration missing"
fi
```

Loop through files:

```bash
for file in *.log; do
  echo "Checking $file"
done
```

## Functions

Functions keep scripts organised and reusable.

```bash
say_hello() {
  echo "Hello, $1!"
}

say_hello "DevOps learner"
```

## Useful DevOps Examples

### Check disk space

```bash
#!/usr/bin/env bash

df -h
```

### Create a dated backup

```bash
#!/usr/bin/env bash

SOURCE="./app-data"
BACKUP="backup-$(date +%F).tar.gz"

tar -czf "$BACKUP" "$SOURCE"
echo "Created $BACKUP"
```

### Check whether a service is running

```bash
#!/usr/bin/env bash

SERVICE="nginx"

if systemctl is-active --quiet "$SERVICE"; then
  echo "$SERVICE is running"
else
  echo "$SERVICE is not running"
fi
```

## Tips and Best Practices

- Start scripts with `#!/usr/bin/env bash`.
- Add `set -euo pipefail` near the top of important scripts to stop on common errors.
- Always quote variables: use `"$FILE"`, not `$FILE`.
- Use clear variable names such as `BACKUP_DIR` and `LOG_FILE`.
- Add comments to explain why a command is needed.
- Test scripts in a safe environment before using them on production servers.
- Never put passwords, API keys, or tokens directly in a script or Git repository.
- Use `shellcheck script.sh` to find common Bash mistakes.

## Handy Cheatsheet

```bash
# File permissions
chmod +x script.sh       # make executable
chmod 644 file.txt       # read/write owner; read everyone else

# Redirect output
command > output.txt     # save output (overwrite)
command >> output.txt    # save output (append)
command 2> errors.txt    # save errors

# Pipes
ps aux | grep nginx      # find a process
cat app.log | tail -n 20 # show last 20 lines

# Archive files
tar -czf archive.tar.gz folder/
tar -xzf archive.tar.gz
```

## DevOps Connection

Bash is commonly used to automate server setup, deployment tasks, CI/CD jobs, backups, monitoring checks, and log analysis.

> Learning by building: each script in this repository is a small step toward reliable automation.

