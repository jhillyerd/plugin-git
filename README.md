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
| gban         | `git branch -a -v --no-merged`                       |
| gbd          | `git branch -d`                                      |
| gbD          | `git branch -D`                                      |
| gbda         | delete all branches merged in current HEAD           |
| ggsup        | git set upstream to origin/_current-branch_          |
| grename      | rename _old_ branch to _new_, including in origin remote |

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
| gc!          | `git commit -v --amend`                              |
| gcn!         | `git commit -v --no-edit --amend`                    |
| gca          | `git commit -v -a`                                   |
| gca!         | `git commit -v -a --amend`                           |
| gcan!        | `git commit -v -a --no-edit --amend`                 |
| gcv          | `git commit -v --no-verify`                          |
| gcav         | `git commit -a -v --no-verify`                       |
| gcav!        | `git commit -a -v --no-verify --amend`               |
| gcm          | `git commit -m`                                      |
| gcam         | `git commit -a -m`                                   |
| gscam        | `git commit -S -a -m`                                |

### Diff

| Abbreviation | Command                                              |
| ------------ | ---------------------------------------------------- |
| gd           | `git diff`                                           |
| gdca         | `git diff --cached`                                  |
| gds          | `git diff --stat`                                    |
| gdsc         | `git diff --stat --cached`                           |
| gdt          | list changed files                                   |
| gdw          | `git diff --word-diff`                               |
| gdwc         | `git diff --word-diff --cached`                      |
| gdv          | pipe `git diff` to `view` command                    |

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
| glom         | `git log --oneline --decorate --color master..`      |
| glod         | `git log --oneline --decorate --color develop..`     |
| glp          | `git log` at requested pretty level                  |
| gwch         | `git whatchanged -p --abbrev-commit --pretty=medium` |

### Push & Pull

| Abbreviation | Command                                              |
| ------------ | ---------------------------------------------------- |
| gl           | `git pull`                                           |
| ggl          | pull origin _current-branch_                         |
| gup          | `git pull --rebase`                                  |
| glr          | `git pull --rebase`                                  |
| gp           | `git push`                                           |
| gp!          | `git push --force-with-lease`                        |
| gpo          | `git push origin`                                    |
| gpo!         | `git push --force-with-lease origin`                 |
| gpv          | `git push --no-verify`                               |
| gpv!         | `git push --no-verify --force-with-lease`            |
| ggp          | push origin _current-branch_                         |
| ggp!         | `ggp --force-with-lease`                             |
| gpu          | `ggp --set-upstream`                                 |
| gpoat        | push all + tags to origin                            |
| ggpnp        | pull & push origin _current-branch_                  |

### Rebase

| Abbreviation | Command                                              |
| ------------ | ---------------------------------------------------- |
| grb          | `git rebase`                                         |
| grba         | `git rebase --abort`                                 |
| grbc         | `git rebase --continue`                              |
| grbi         | `git rebase --interactive`                           |
| grbm         | `git rebase master`                                  |
| grbmi        | `git rebase master --interactive`                    |
| grbmia       | `git rebase master --interactive --autosquash`       |
| grbd         | `git rebase develop`                                 |
| grbdd        | `git rebase develop --interactive`                   |
| grbdia       | `git rebase develop --interactive --autosquash`      |
| grbs         | `git rebase --skip`                                  |
| ggu          | fetch & rebase _current-branch_ on top of the upstream branch |

### Remote

| Abbreviation | Command                                              |
| ------------ | ---------------------------------------------------- |
| gr           | `git remote -vv`                                     |
| gra          | `git remote add`                                     |
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

### Tags

| Abbreviation | Command                                              |
| ------------ | ---------------------------------------------------- |
| gts          | `git tag -s`                                         |
| gtv          | `git tag | sort -V`                                  |
| gtl          | list tags matching prefix                            |


### Local Files

| Abbreviation | Command                                              |
| ------------ | ---------------------------------------------------- |
| ga           | `git add`                                            |
| gaa          | `git add --all`                                      |
| gapa         | `git add --patch`                                    |
| grm          | `git rm`                                             |
| grmc         | `git rm --cached`                                    |
| grs          | `git restore`                                        |
| grss         | `git restore --source`                               |


### Everything Else

| Abbreviation | Command                                                     |
| ------------ | --------------------------------------------------------    |
| g            | `git`                                                       |
| gap          | `git apply`                                                 |
| gbl          | `git blame -b -w`                                           |
| gcf          | `git config --list`                                         |
| gcl          | `git clone`                                                 |
| gclean       | `git clean -di`                                             |
| gclean!      | `git clean -dfx`                                            |
| gclean!!     | `git reset --hard; and git clean -dfx`                      |
| gcp          | `git cherry-pick`                                           |
| gcpa         | `git cherry-pick --abort`                                   |
| gcpc         | `git cherry-pick --continue`                                |
| gignore      | `git update-index --assume-unchanged`                       |
| gignored     | list temporarily ignored files                              |
| gf           | `git fetch`                                                 |
| gfa          | `git fetch --all --prune`                                   |
| gfm          | `git fetch origin master --prune; and git merge FETCH_HEAD` |
| gfo          | `git fetch origin`                                          |
| gm           | `git merge`                                                 |
| gmt          | `git mergetool --no-prompt`                                 |
| grev         | `git revert`                                                |
| grh          | `git reset HEAD`                                            |
| grhh         | `git reset HEAD --hard`                                     |
| grt          | cd into the top of the current repository or submodule      |
| gsh          | `git show`                                                  |
| gsd          | `git svn dcommit`                                           |
| gsr          | `git svn rebase`                                            |
| gss          | `git status -s`                                             |
| gst          | `git status`                                                |
| gsu          | `git submodule update`                                      |
| gsur         | `git submodule update --recursive`                          |
| gsuri        | `git submodule update --recursive --init`                   |
| gsw          | `git switch`                                                |
| gswc         | `git switch --create`                                       |
| gunignore    | `git update-index --no-assume-unchanged`                    |


# License

[MIT][mit] © [James Hillyerd][author] et [al][contributors]


[mit]:            https://opensource.org/licenses/MIT
[author]:         https://github.com/jhillyerd
[contributors]:   https://github.com/jhillyerd/plugin-git/graphs/contributors
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish

[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
[omz-git-plugin]: https://github.com/robbyrussell/oh-my-zsh/wiki/Plugin:git
