# Bash 

Bash (Bourne Again Shell) is a Unix shell and command interpreter, serving as the standard command-line interface for Linux, macOS, and other Unix-like systems. It reads command lines from users or script files to execute programs, manage files, and automate tasks through scripting, offering features like command editing, scripting variables, and function support.

`.bashrc` and `.bash_profile` involve understanding their execution timing and keeping them organized, backed up, and secure. The key is to separate configuration for login shells (once per login) and interactive shells (every new terminal).

## File Purpose & Timing

| File | Execution Timing | Typical Use Cases |
| :--- | :--- | :--- |
| **.bash_profile** | Executed once at login (e.g., SSH session, boot). Bash looks for this file, then .bash_login, then .profile, in that order, and only runs the first one it finds. | Setting environment variables (like PATH, EDITOR, JAVA_HOME) and running commands that should only run once per session (e.g., ssh-agent). |
| **.bashrc** | Executed every time a new interactive shell session is started (e.g., opening a new terminal window or tab). | Setting aliases, functions, shell options, and customizing the prompt (PS1). |

## General Best Practices

- Source .bashrc from .bash_profile: To ensure consistency across all shells, most users include a snippet in their .bash_profile to source the .bashrc file. This makes aliases and functions available in both login and non-login shells. A common snippet is:

```sh
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
```

- **Backup files**: Always create a backup before making major changes. A simple command for this is cp ~/.bashrc ~/.bashrc.bak.
- **Use comments and organization**: Group configurations into logical sections (e.g., # Aliases, # Functions) and use comments (#) to explain the code's purpose.
- **Avoid sensitive data**: Never store passwords or API keys directly in these files. Use secure vaults or environment variables managed by a secure system instead.
- **Test changes safely**: Before sourcing a changed file in your current session, open a new terminal window to test the configuration. If something is broken, you can exit the new terminal and fix the issue in your original, working shell.
- **Guard against non-interactive execution**: To prevent issues with programs like scp or sftp, use a conditional check to ensure commands that produce output or are only for interactive use run only when the shell is interactive.

```sh
# Check if interactive shell
[[ $- == *i* ]] || return 0
```

- **Use version control**: For complex setups, track your dotfiles (.bashrc, .bash_profile, etc.) using Git to manage changes effectively.
- **Permissions**: Set file permissions to 600 (-rw-------) to ensure sensitive configurations cannot be read by other users. 