<img src="https://cdn.rawgit.com/oh-my-fish/oh-my-fish/e4f1c2e0219a17e2c748b824004c8d0b38055c16/docs/logo.svg" align="left" width="144px" height="144px"/>

#### git
> A git aliases plugin for [Oh My Fish][omf-link] based loosely on the
[Oh My Zsh Git Plugin][omz-git-plugin].

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v2.2.0-007EC7.svg?style=flat-square)](https://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-007EC7.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)

<br/>

## Install

```fish
$ omf install https://github.com/jhillyerd/plugin-git
```


## Usage

| Abbreviation | Command                                              |
| ------------ | ---------------------------------------------------- |
| g            | `git`                                                |
| ga           | `git add`                                            |
| gaa          | `git add --all`                                      |
| gapa         | `git add --patch`                                    |
| gba          | `git branch -a -v`                                   |
| gb           | `git branch`                                         |
| gc           | `git commit -v`                                      |
| `gc!`        | `git commit -v --amend`                              |
| gca          | `git commit -v -a`                                   |
| `gca!`       | `git commit -v -a --amend`                           |
| gcmsg        | `git commit -m`                                      |
| gcl          | `git clone`                                          |
| gco          | `git checkout`                                       |
| gcod         | `git checkout develop`                               |
| gcom         | `git checkout master`                                |
| gcb          | `git checkout -b`                                    |
| gcount       | `git shortlog -sn`                                   |
| gcp          | `git cherry-pick`                                    |
| gd           | `git diff`                                           |
| gdca         | `git diff --cached`                                  |
| gff          | `git flow feature`                                   |
| gfr          | `git flow release`                                   |
| gfh          | `git flow hotfix`                                    |
| gfs          | `git flow support`                                   |
| gignore      | `git update-index --assume-unchanged`                |
| gk           | `gitk --all --branches`                              |
| gf           | `git fetch`                                          |
| gfa          | `git fetch --all --prune`                            |
| gfo          | `git fetch origin`                                   |
| gl           | `git pull`                                           |
| glg          | `git log --stat --max-count=10`                      |
| glgg         | `git log --graph --max-count=10`                     |
| glgga        | `git log --graph --decorate --all`                   |
| glo          | `git log --oneline --decorate --color`               |
| gloo         | `git log --pretty=format:'%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s' --date=short` |
| glog         | `git log --oneline --decorate --color --graph`       |
| gm           | `git merge`                                          |
| gmt          | `git mergetool --no-prompt`                          |
| gp           | `git push`                                           |
| gr           | `git remote`                                         |
| grba         | `git rebase --abort`                                 |
| grbc         | `git rebase --continue`                              |
| grbi         | `git rebase --interactive`                           |
| grbm         | `git rebase master`                                  |
| grbs         | `git rebase --skip`                                  |
| grh          | `git reset HEAD`                                     |
| grhh         | `git reset HEAD --hard`                              |
| grmv         | `git remote rename`                                  |
| grrm         | `git remote remove`                                  |
| grset        | `git remote set-url`                                 |
| grup         | `git remote update`                                  |
| grv          | `git remote -v`                                      |
| gsd          | `git svn dcommit`                                    |
| gsr          | `git svn rebase`                                     |
| gss          | `git status -s`                                      |
| gst          | `git status`                                         |
| gsta         | `git stash`                                          |
| gstd         | `git stash drop`                                     |
| gstp         | `git stash pop`                                      |
| gsts         | `git stash show --text`                              |
| gunignore    | `git update-index --no-assume-unchanged`             |
| gup          | `git pull --rebase`                                  |
| gwch         | `git whatchanged -p --abbrev-commit --pretty=medium` |


# License

[MIT][mit] © [James Hillyerd][author] et [al][contributors]


[mit]:            https://opensource.org/licenses/MIT
[author]:         https://github.com/jhillyerd
[contributors]:   https://github.com/jhillyerd/plugin-git/graphs/contributors
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish

[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
[omz-git-plugin]: https://github.com/robbyrussell/oh-my-zsh/wiki/Plugin:git
