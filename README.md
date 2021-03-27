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
  width="55%"
  align="right"
/>

<div style="text-align: justify">

**Minimalist Prompt**, a simple and lightning fast, yet, *feature rich*, bash prompt

- **Fast:** uses bash scripting language, making it *hella* fast!
- **Customizable:** all the variables are in a single file.
- **Feature rich:** regardless of being a "bare bones prompt", has everything that's needed.
- **Easy:** quick installation and configuration.
- **Organized:** everything is and depends on one file.

</div>

<!--
![xelabash](images/base.png)
**Minimalist Prompt**, a simple yet *feature rich* bash prompt.
-->

## Table of Contents

* [Features](#📋-features)
  * [Home](#home)


## 📋 Features

<details>
    <summary>Supports extensions!</summary>
    <br />
    <div style="text-align: justify">
        By definition, an extension is "a part that is added to something to enlarge or prolong it." In this context, these are added to prompt for showing extra information that might be relevant to the user, currently it supports the following ones:
    </div>
    <br />
    <details>
        <summary>Current git branch on prompt</summary>
        <br />
        <div style="text-align: justify">
            It shows the current git branch only if the user is inside a git repository.
        </div>
        <br />
        <br />
        <p align="center">
            <img
            src="https://i.imgur.com/hqUUcgB.gif"
            alt="Git branch on prompt"
            width="70%"
            />
            <center>
                <figcaption>Git branch on prompt</figcaption>
            </center>
        </p>
    </details>
    <details>
        <summary>Current Kubernetes container</summary>
        <br />
        <div style="text-align: justify">
            It shows the current Kubernetes container.
        </div>
        <br />
        <br />
        <p align="center">
            <img
            src="https://i.imgur.com/zUHvERF.png"
            alt="Kubernetes container on prompt"
            width="70%"
            />
            <center>
                <figcaption>Kubernetes container on prompt</figcaption>
            </center>
        </p>
    </details>
    <br />
</details>


<details>
    <summary>You can customize prompt's functions On Da Fly (w/ on_da_fly.sh)</summary>
    <br />
    <div style="text-align: justify">
        This is a companion for the prompt itself. The prompt is, of course, not dependent to this file, however it's a handy dandy script to have. This script allows you modify many of the prompts functions and specs from the command line with some simple commands for the current terminal session. The following are the commands:
    </div>
<p>

```
$ odf --help

This script simplifies the process of changing MiniPrompt's configuration variables
on the fly for the current terminal session

Usage:
    #0: bash [arg] <modifier(s)>
    #1: bash [flag]
Arguments:
    ex, exe,extensions,extensions_main              Modify 'extensions_main' var
    gp, git,git_prompt,GIT_PROMPT                   Modify 'GIT_PROMPT' var
    kb, kube,kubernetes_prompt,KUBE_PROMPT          Modify 'KUBE_PROMPT' var
    mb, b,my_bin,MY_BIN                             Modify 'MY_BIN' var
    ae, add_exit,ADD_EXIT                           Modify 'add_exit' var
    si, skip_init,SKIP_INIT                         Modify 'skip_init' var
Modifiers: (only for arguments)
    f/false/FALSE                                   Disables [arg]
    t/true/TRUE                                     Enables [arg]
Flags:
    -h,--help                                       See this help message.
    -d, -dis,-disable,-DISABLE                      Disable MiniPrompt

Examples:
    #0: bash gp t
        Explanation: This will export the 'GIT_PROMPT' variable as true (enables it to show branch on prompt)
    #1: bash ex f
        Explanation: This will export the 'extensions_main' variable as false (disables all extensions)
    #2: bash ae t
        Explanation: This will export the 'add_exit' variable as true (enables exit status to be shown on prompt)

```
</p>
    <br />
    <br />
    <p align="center">
        <img
        src="https://i.imgur.com/0MOao4K.gif"
        alt="Example: dding git branch and customizing exit status"
        width="70%"
        />
        <center>
            <figcaption>Example: adding git branch and customizing exit status</figcaption>
        </center>
    </p>
</details>


<details>
    <summary>Changes Directory colors!</summary>
    <br />
    <div style="text-align: justify">
        It guarantees that the directories are always colorized regardless of which command you are using to list the files in x dir (e.g. ls, exa.)
    </div>
    <br />
    <br />
    <p align="center">
        <img
        src="https://i.imgur.com/zUHvERF.png"
        alt="Blue dirs"
        width="70%"
        />
        <center>
            <figcaption>Blue dirs</figcaption>
        </center>
    </p>
</details>


<details>
    <summary>Changes prompt while being connected through ssh</summary>
    <br />
    <div style="text-align: justify">
        It simply changes the prompt according to whether the user is ssh-ing into somewhere.
    </div>
    <br />
    <br />
    <p align="center">
        <img
        src="https://i.imgur.com/JVcfDbu.gif"
        alt="SSH prompt"
        width="70%"
        />
        <center>
            <figcaption>SSH Prompt</figcaption>
        </center>
    </p>
</details>

<details>
    <summary>Improves bash's default autocompletion</summary>
    <br />
    <div style="text-align: justify">
        Mainly, it removes case sensitiveness, therefore, typing "cmd" and then pressing <tab>, for intance, will get you the same output as if you where doing the same but wiht "CMD". Furthermore, it also colors output according to how close the match is to the word/command you are typing. By lexical comparison, it will highlight the matched part with purple, if the other part is predictibly matchable, it will highlight it in green, but if the other part of the is not quite so similar, it will highlight it with blue.
    </div>
    <br />
    <br />
    <p align="center">
        <img
        src="https://i.imgur.com/LcemeHw.gif"
        alt="Improved autocompletion"
        width="70%"
        />
        <center>
            <figcaption>Improved autocompletion</figcaption>
        </center>
    </p>
</details>


<details>
    <summary>Displays last command's exit status</summary>
    <br />
    <div style="text-align: justify">
        Changes the prompt's last char color and/or symbol (according to user's specifications) respecting to the las command's exit status. If it was 0, then prompt will display the 'succes_symbol' in a green color, but if it's something other than that, it will display the 'error_symbol' in a red color (both by default).
    </div>
    <br />
    <br />
    <p align="center">
        <img
        src="https://i.imgur.com/6GAjKij.gif"
        alt="Exit status affects prompt"
        width="70%"
        />
        <center>
            <figcaption>Exit status affecting prompt</figcaption>
        </center>
    </p>
</details>

<details>
    <summary>Modifies history in order to show more information</summary>
    <br />
    <div style="text-align: justify">
        What this does it that it appends a formatted version of the date and the time at which *x* command was executed.
    </div>
    <br />
    <br />
    <p align="center">
        <img
        src="https://i.imgur.com/4n8vnh1.gif"
        alt="Custom history"
        width="70%"
        />
        <center>
            <figcaption>Custom history</figcaption>
        </center>
    </p>
</details>

## Install and Setup

### Prerequisites

- A [Nerd Font](https://www.nerdfonts.com/) installed and enabled in the terminal (e.g. [Fira Code Nerd Font](https://www.nerdfonts.com/font-downloads)).
- [bash 4.4+](https://www.gnu.org/software/bash/)

### Download
MiniPrompt can be downloaded in two different forms:
1. Stable: Going to the [realses page](https://github.com/kdav5758/MiniPrompt/releases) of the repository and downloading the .zip file.
2. Testing: Cloning the repository.

#### Method #1
```bash
$ git clone
```
### Method #2
```bash
$ cd /usr/local/bin/
$ git clone https://github.com/kdav5758/MiniPrompt
$ cd MiniPrompt
```

### Configuration




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
