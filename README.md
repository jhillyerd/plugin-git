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

### Bisect

| Abbreviation | Command                                              |
| ------------ | ---------------------------------------------------- |
| gbs          | `git bisect`                                         |
| gbsb         | `git bisect bad`                                     |
| gbsg         | `git bisect good`                                    |
| gbsr         | `git bisect reset`                                   |
| gbss         | `git bisect start`                                   |

### Branch

| Abbreviation | Command                                              |
| ------------ | ---------------------------------------------------- |
| gb           | `git branch -vv`                                     |
| gba          | `git branch -a -v`                                   |
| gbda         | delete all branches merged in current HEAD           |
| ggsup        | git set upstream to origin/_current-branch_          |

### Checkout

| Abbreviation | Command                                              |
| ------------ | ---------------------------------------------------- |
| gco          | `git checkout`                                       |
| gcod         | `git checkout develop`                               |
| gcom         | `git checkout master`                                |
| gcb          | `git checkout -b`                                    |

### Commit

| Abbreviation | Command                                              |
| ------------ | ---------------------------------------------------- |
| gc           | `git commit -v`                                      |
| `gc!`        | `git commit -v --amend`                              |
| `gcn!`       | `git commit -v --no-edit --amend`                    |
| gca          | `git commit -v -a`                                   |
| `gca!`       | `git commit -v -a --amend`                           |
| `gcan!`      | `git commit -v -a --no-edit --amend`                 |
| gcm          | `git commit -m`                                      |
| gcam         | `git commit -a -m`                                   |
| gscam        | `git commit -S -a -m`

### Flow

| Abbreviation | Command                                              |
| ------------ | ---------------------------------------------------- |
| gfb          | `git flow bugfix`                                    |
| gff          | `git flow feature`                                   |
| gfr          | `git flow release`                                   |
| gfh          | `git flow hotfix`                                    |
| gfs          | `git flow support`                                   |
| gfbs         | `git flow bugfix start`                              |
| gffs         | `git flow feature start`                             |
| gfrs         | `git flow release start`                             |
| gfhs         | `git flow hotfix start`                              |
| gfss         | `git flow support start`                             |
| gfbt         | `git flow bugfix track`                              |
| gfft         | `git flow feature track`                             |
| gfrt         | `git flow release track`                             |
| gfht         | `git flow hotfix track`                              |
| gfst         | `git flow support track`                             |
| gfp          | `git flow publish`                                   |

### Log

| Abbreviation | Command                                              |
| ------------ | ---------------------------------------------------- |
| gcount       | `git shortlog -sn`                                   |
| glg          | `git log --stat --max-count=10`                      |
| glgg         | `git log --graph --max-count=10`                     |
| glgga        | `git log --graph --decorate --all`                   |
| glo          | `git log --oneline --decorate --color`               |
| gloo         | `git log --pretty=format:'%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s' --date=short` |
| glog         | `git log --oneline --decorate --color --graph`       |
| glp          | git log at requested pretty level                    |
| gwch         | `git whatchanged -p --abbrev-commit --pretty=medium` |

### Push & Pull

| Abbreviation | Command                                              |
| ------------ | ---------------------------------------------------- |
| gl           | `git pull`                                           |
| ggl          | pull origin _current-branch_                         |
| gup          | `git pull --rebase`                                  |
| gp           | `git push`                                           |
| gp!          | `git push --force-with-lease`                        |
| gpv          | `git push --no-verify`                               |
| gpv!         | `git push --no-verify --force-with-lease`            |
| ggp          | push origin _current-branch_                         |
| gpoat        | push all + tags to origin                            |
| ggpnp        | pull & push origin _current-branch_                  |
| gpu          | git push --set-upsteam origin _current-branch_       |

### Rebase

| Abbreviation | Command                                              |
| ------------ | ---------------------------------------------------- |
| grb          | `git rebase`                                         |
| grba         | `git rebase --abort`                                 |
| grbc         | `git rebase --continue`                              |
| grbi         | `git rebase --interactive`                           |
| grbm         | `git rebase master`                                  |
| grbs         | `git rebase --skip`                                  |
| ggu          | fetch & rebase _current-branch_ on top of the upstream branch |

### Remote

| Abbreviation | Command                                              |
| ------------ | ---------------------------------------------------- |
| gr           | `git remote -vv`                                     |
| grmv         | `git remote rename`                                  |
| grrm         | `git remote remove`                                  |
| grset        | `git remote set-url`                                 |
| grup         | `git remote update`                                  |
| grv          | `git remote -v`                                      |

### Stash & Work in Progress

| Abbreviation | Command                                              |
| ------------ | ---------------------------------------------------- |
| gsta         | `git stash`                                          |
| gstd         | `git stash drop`                                     |
| gstp         | `git stash pop`                                      |
| gsts         | `git stash show --text`                              |
| gwip         | commit a work-in-progress branch                     |
| gunwip       | uncommit the work-in-progress branch                 |

### Everything Else

| Abbreviation | Command                                                     |
| ------------ | --------------------------------------------------------    |
| g            | `git`                                                       |
| ga           | `git add`                                                   |
| gaa          | `git add --all`                                             |
| gapa         | `git add --patch`                                           |
| gcf          | list git configuration                                      |
| gcl          | `git clone`                                                 |
| gclean       | pristine working directory: reset and force clean           |
| gcp          | `git cherry-pick`                                           |
| gd           | `git diff`                                                  |
| gdca         | `git diff --cached`                                         |
| gds          | `git diff --stat`                                           |
| gdsc         | `git diff --stat --cached`                                  |
| gdv          | pipe git diff to `view` command                             |
| gignore      | `git update-index --assume-unchanged`                       |
| gignored     | list temporarily ignored files                              |
| gf           | `git fetch`                                                 |
| gfa          | `git fetch --all --prune`                                   |
| gfm          | `git fetch origin master --prune; and git merge FETCH_HEAD` |
| gfo          | `git fetch origin`                                          |
| gm           | `git merge`                                                 |
| gmt          | `git mergetool --no-prompt`                                 |
| grh          | `git reset HEAD`                                            |
| grhh         | `git reset HEAD --hard`                                     |
| grt          | cd into the top of the current repository or submodule      |
| gsh          | `git show`                                                  |
| gsd          | `git svn dcommit`                                           |
| gsr          | `git svn rebase`                                            |
| gss          | `git status -s`                                             |
| gst          | `git status`                                                |
| gunignore    | `git update-index --no-assume-unchanged`                    |


# License

[MIT][mit] © [James Hillyerd][author] et [al][contributors]


[mit]:            https://opensource.org/licenses/MIT
[author]:         https://github.com/jhillyerd
[contributors]:   https://github.com/jhillyerd/plugin-git/graphs/contributors
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish

[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
[omz-git-plugin]: https://github.com/robbyrussell/oh-my-zsh/wiki/Plugin:git
