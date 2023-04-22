# bare-prompt

Super clean and simple bash prompt.

## Install

First, run this command to install the prompt. After reloading your terminal emulator, your prompt should be updated.

```bash
curl -sSL 'https://raw.githubusercontent.com/anatolethien/bare-prompt/master/install.sh' | bash
```

This command will install the default theme, `main`.

## Themes

There are a few themes available!

- `main`
- `main-one`
- `classic`
- `classic-one`

Install a specific theme with the following command. This one will install the `classic` theme.

```bash
curl -sSL 'https://raw.githubusercontent.com/anatolethien/bare-prompt/master/install.sh' | bash -s classic
```

⚠ You currently can only install one theme at a time.

## Contribute

Feel free to create your own theme and submit a Pull request so it can be added to the repository and shared to the world!

Make sure to meet the following good practices:

- Write your theme in a file named `bare-prompt-<your_theme>.sh` located in the `themes/` directory.
- Make sure your theme is compatible with both Windows and Linux versions of `bash`.