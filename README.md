# MiniPrompt

<p align="center">
  <img
    width="150"
    src="https://i.imgur.com/4APsKxj.png"
    alt="MiniPrompt, a simple yet function rich bash prompt!"
  />
</p>

<p align="center">
  <a href="https://github.com/kdav5758/MiniPrompt"
    ><img
      src="https://img.shields.io/github/repo-size/kdav5758/MiniPrompt"
      alt="GitHub repository size"
  /></a>
  <a href="https://github.com/kdav5758/MiniPrompt/blob/dev/LICENSE"
    ><img
      src="https://img.shields.io/badge/license-GPL-blue"
      alt="GPL License"
  /></a>
  <a href="https://github.com/kdav5758/MiniPrompt/releases"
    ><img
      src="https://img.shields.io/github/downloads/kdav5758/MiniPrompt/total"
      alt="Amount of downloads"/></a
  ><br />
  <a href="https://github.com/kdav5758/MiniPrompt/tags"
    ><img
      src="https://img.shields.io/github/v/tag/kdav5758/MiniPrompt"
      alt="Latest tag"
  /></a>
  <a href="https://github.com/kdav5758/MiniPrompt/tree/dev"
    ><img
      src="https://img.shields.io/github/last-commit/kdav5758/MiniPrompt/dev"
      alt="Latest commit on dev branch"
  /></a>
</p>

<p align="center">
  <a href="https://starship.rs">Website</a>
  ·
  <a href="#🚀-installation">Installation</a>
  ·
  <a href="https://starship.rs/config/">Configuration</a>
</p>

<img
  src="https://i.imgur.com/0MOao4K.gif"
  alt="MiniPrompt with Kitty Terminal and a custom theme"
  width="50%"
  align="right"
/>

**Minimalist Prompt**, a simple and lightning fast, yet, *feature rich*, bash prompt

- **Fast:** uses bash scripting language, making it *hella* fast!
- **Customizable:** all the variables are in a single file.
- **Feature rich:** regardless of being a "bare bones prompt", has everything that's needed.
- **Easy:** quick installation and configuration.
- **Organized:** everything is and depends on one file.

<!--
![xelabash](images/base.png)
**Minimalist Prompt**, a simple yet *feature rich* bash prompt.
-->

## Table of Contents

* [Features](#📋-features)
  * [Home](#home)


## 📋 Features

- Supports *extensions*
  - Display Git branch when in a Git repo
  - Display Kubernetes context and namespace
- Changes color/symbol according to last command's exit status
- Changes prompt while being connected through **ssh**
- Improves bash's default autocompletion
- Modifies `history` in order to show more information
- Comes with `odf.sh` (On Da Fly), which allows you to customize the prompt *on the fly*
- Changes Directory colors!

<details>
    <summary>Modifies `history` in order to show more information</summary>
    What this does it that it appends a formatted version of the date and the time at which *x* command was executed.
    <img
        src="https://i.imgur.com/4n8vnh1.gif"
        alt="Custom history"
        width="50%"
        align="right"
    />
</details>

## Install and Setup

Works best with bash 4.4+. There are no dependencies to install.

To install, simply clone this repo and source `xela.bash` in your `.bash_profile`. (If `.bash_profile` doesn't work, try `.bashrc`.)

```bash
cd
git clone --depth=1 https://github.com/aelindeman/xelabash "${XDG_DATA_HOME:-~/.local/share}/xelabash"
echo 'source "${XDG_DATA_HOME:-~/.local/share}/xelabash/xela.bash"' >> .bash_profile
```

Xelabash will load configuration files from the `config.d/` folder in this repository, so you can fork this repo and add your own aliases, configs, functions, environment variables, or whatever else you need.

Git and Kubernetes prompt pieces are **opt-in.** Just set `GIT_PROMPT=true` and/or `KUBE_PROMPT=true` before you load Xelabash:

```bash
GIT_PROMPT=true
KUBE_PROMPT=true
source ~/.local/share/xelabash/xela.bash
```

Alternatively, if you don't want to always see them, use a tool like [direnv](https://github.com/direnv/direnv) to set those environment variables conditionally based on your working directory.

## More pictures

- Full `cwd`

  ![dir](images/dir.png)

- Git status and branch

  ![git](images/git.png)

- Kubernetes context (and namespace, if set)

  ![kube](images/kube.png)

- Last process exit status

  ![exit](images/exit.png)

- Username and hostname, when connected via `ssh`

  ![ssh](images/ssh.png)

- ...and they all work in combination with each other

  ![combo](images/combo.png)
