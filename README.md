<img src="https://cdn.rawgit.com/oh-my-fish/oh-my-fish/e4f1c2e0219a17e2c748b824004c8d0b38055c16/docs/logo.svg" align="left" width="144px" height="144px"/>

#### git
> A git aliases plugin for [Oh My Fish][omf-link] and [Fisher][fisher-link],
> based loosely on the [Oh My Zsh Git Plugin][omz-git-plugin].

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v3.5.0-007EC7.svg?style=flat-square)](https://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-007EC7.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)
[![Nix Package](https://img.shields.io/badge/nixpkgs-fishPlugins.plugin--git-blue?style=flat-square&logo=nixos)](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/shells/fish/plugins/plugin-git.nix)

<br/>

## Install

oh-my-fish:

```fish
omf install https://github.com/jhillyerd/plugin-git
```

fisher:
```fish
fisher install jhillyerd/plugin-git
```

Nix's home-manager:
```nix
{
  # ...
  programs.fish = {
    enable = true;

    plugins = [
      {
        name = "plugin-git";
        src = pkgs.fishPlugins.plugin-git.src;
      }
    ];
  };
  # ...
}

```

## Default branch name

`plugin-git` respects `init.defaultBranch` setting that was [introduced in git 2.28](https://github.blog/2020-07-27-highlights-from-git-2-28/#introducing-init-defaultbranch).
The order for resolving the default branch name is as follows:

1. `init.defaultBranch` if it is set and the branch exists
2. `main` if it exists
3. `master` as fallback

## Sample workflow

```
cd my-repo       # enter a git repo
gss              # check current status

.. bunch of old edits I don't want ..

gclean!!         # pristine repo!!
gcom             # checkout main/master branch
gl               # pull changes
gcb fix-bug      # create new fix-bug branch

.. edit files ..

gaa              # add (stage) all changed and new files
gc               # commit changes
gpu              # push to origin, set upstream

.. oops, edit more files ..

gcan!            # amend commit w/ all modified files, re-using message
gp!              # force push changes

.. main branch has some changes I need ..

grbom            # fetch origin and rebase on main/master

.. editing some files, but need to work on something else quickly ..

gwip             # save WIP commit of working directory for later
gfa              # fetch all branches from origin
gloga            # view log graph of all recent repo activity
gco feature      # switch to existing feature branch
gwch             # inspect what changed recently (with diffs)

.. edit lots of files ..

ga file1 file2   # add just the files I want to commit

.. hmm, will my tests pass with just these two files? ..

gtest make test  # runs 'make test' against staged changes only

.. failed! need to patch in some other changes ..

gapa             # selectively stage more changes
gtest make test
gcm "tests pass" # commit staged w/ message
gca              # commit all other modified files
gp               # push

.. back to my bugfix ..

gco fix-bug      # checkout
gunwip           # restore work in progress
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
| gbda         | delete all branches merged in current HEAD, add `--gone` to include branches that have been deleted on remote |
| gbage        | list local branches and display their age            |
| ggsup        | `git branch --set-upstream-to=origin/(__git.current_branch)`  |
| grename      | rename _old_ branch to _new_, including in origin remote      |

### Checkout

| Abbreviation | Command                                              |
| ------------ | ---------------------------------------------------- |
| gco          | `git checkout`                                       |
| gcod         | `git checkout develop`                               |
| gcom         | `git checkout (__git.default_branch)`                |
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
| gcs          | `git commit -S`                                      |
| gscam        | `git commit -S -a -m`                                |
| gcfx         | `git commit --fixup`                                 |

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
| gdto         | `git difftool`                                       |
| gdg          | `git diff --no-ext-diff`                             |
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
| glg          | `git log --stat`                                     |
| glgg         | `git log --graph`                                    |
| glgga        | `git log --graph --decorate --all`                   |
| glo          | `git log --oneline --decorate --color`               |
| gloo         | `git log --pretty=format:'%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s' --date=short` |
| glog         | `git log --oneline --decorate --color --graph`       |
| gloga        | `git log --oneline --decorate --color --graph --all` |
| glom         | `git log --oneline --decorate --color (__git.default_branch)..` |
| glod         | `git log --oneline --decorate --color develop..`     |
| glp          | `git log` at requested pretty level                  |
| gwch         | `git whatchanged -p --abbrev-commit --pretty=medium` |

### Push & Pull

| Abbreviation | Command                                              |
| ------------ | ---------------------------------------------------- |
| gl           | `git pull`                                           |
| ggl          | `git pull origin (__git.current_branch)`             |
| gup          | `git pull --rebase`                                  |
| gupv         | `git pull --rebase -v`                               |
| gupa         | `git pull --rebase --autostash`                      |
| gupav        | `git pull --rebase --autostash -v`                   |
| glr          | `git pull --rebase`                                  |
| gp           | `git push`                                           |
| gp!          | `git push --force-with-lease`                        |
| gpo          | `git push origin`                                    |
| gpo!         | `git push --force-with-lease origin`                 |
| gpv          | `git push --no-verify`                               |
| gpv!         | `git push --no-verify --force-with-lease`            |
| ggp          | `git push origin (__git.current_branch)`             |
| ggp!         | `git push origin (__git.current_branch) --force-with-lease`   |
| gpu          | `git push origin (__git.current_branch) --set-upstream`       |
| gpoat        | `git push origin --all; and git push origin --tags`  |
| ggpnp        | pull & push origin _current-branch_                  |

### Rebase

| Abbreviation | Command                                              |
| ------------ | ---------------------------------------------------- |
| grb          | `git rebase`                                         |
| grba         | `git rebase --abort`                                 |
| grbc         | `git rebase --continue`                              |
| grbi         | `git rebase --interactive`                           |
| grbm         | `git rebase (__git.default_branch)`                            |
| grbmi        | `git rebase (__git.default_branch) --interactive`              |
| grbmia       | `git rebase (__git.default_branch) --interactive --autosquash` |
| grbom        | `git fetch origin (__git.default_branch); and git rebase FETCH_HEAD` |
| grbomi       | `git fetch origin (__git.default_branch); and git rebase FETCH_HEAD --interactive` |
| grbomia      | `git fetch origin (__git.default_branch); and git rebase FETCH_HEAD --interactive --autosquash` |
| grbd         | `git rebase develop`                                 |
| grbdi        | `git rebase develop --interactive`                   |
| grbdia       | `git rebase develop --interactive --autosquash`      |
| grbs         | `git rebase --skip`                                  |
| ggu          | `git pull --rebase origin \(__git.current_branch\)`  |

### Remote

| Abbreviation | Command                                              |
| ------------ | ---------------------------------------------------- |
| gr           | `git remote -vv`                                     |
| gra          | `git remote add`                                     |
| grmv         | `git remote rename`                                  |
| grpo         | `git remote prune origin`                            |
| grrm         | `git remote remove`                                  |
| grset        | `git remote set-url`                                 |
| grup         | `git remote update`                                  |
| grv          | `git remote -v`                                      |

### Stash & Work in Progress

| Abbreviation | Command                                              |
| ------------ | ---------------------------------------------------- |
| gsta         | `git stash`                                          |
| gstd         | `git stash drop`                                     |
| gstl         | `git stash list`                                     |
| gstp         | `git stash pop`                                      |
| gsts         | `git stash show --text`                              |
| gtest        | runs specified command against staged files only     |
| gwip         | commit a work-in-progress branch                     |
| gunwip       | uncommit the work-in-progress branch                 |

### Tags

| Abbreviation | Command                                              |
| ------------ | ---------------------------------------------------- |
| gts          | `git tag -s`                                         |
| gtv          | `git tag \| sort -V`                                 |
| gtl          | list tags matching prefix                            |


### Local Files

| Abbreviation | Command                                              |
| ------------ | ---------------------------------------------------- |
| ga           | `git add`                                            |
| gaa          | `git add --all`                                      |
| gau          | `git add --update`                                   |
| gapa         | `git add --patch`                                    |
| grm          | `git rm`                                             |
| grmc         | `git rm --cached`                                    |
| grs          | `git restore`                                        |
| grss         | `git restore --source`                               |
| grst         | `git restore --staged`                               |

### Worktree

| Abbreviation | Command                                              |
| ------------ | ---------------------------------------------------- |
| gwt          | `git worktree`                                       |
| gwta         | `git worktree add`                                   |
| gwtls        | `git worktree list`                                  |
| gwtlo        | `git worktree lock`                                  |
| gwtmv        | `git wortree remove`                                 |
| gwtpr        | `git worktree prune`                                 |
| gwtulo       | `git worktree unlock`                                |

### GitLab-specific [push options](https://docs.gitlab.com/ee/user/project/push_options.html)

| Abbreviation | Command                                              |
| ------------ | ---------------------------------------------------- |
| gmr          | Push current branch and create a merge request from it |
| gmwps        | Same as `gmr` but set the merge request to merge when the pipeline succeeds |

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
| gfm          | `git fetch origin (__git.default_branch) --prune; and git merge FETCH_HEAD` |
| gfo          | `git fetch origin`                                          |
| gm           | `git merge`                                                 |
| gmt          | `git mergetool --no-prompt`                                 |
| gmom         | `git merge origin/(__git.default_branch)`                   |
| grev         | `git revert`                                                |
| grh          | `git reset HEAD`                                            |
| grhh         | `git reset HEAD --hard`                                     |
| grhpa        | `git reset --patch`                                         |
| grt          | cd into the top of the current repository or submodule      |
| gsh          | `git show`                                                  |
| gsd          | `git svn dcommit`                                           |
| gsr          | `git svn rebase`                                            |
| gsb          | `git status -sb`                                            |
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
[omf-link]:       https://github.com/oh-my-fish/oh-my-fish
[fisher-link]:    https://github.com/jorgebucaran/fisher

[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
[omz-git-plugin]: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git/
