# Git Notes

## Help

```shell
git man
git help

git config --list
git config --global user.name "name"
git config --global user.email "email"
```
## Settings

```shell
git init $path
git config
git clone -b $branch_name $url $directory/destination_url
alias missing
```

```shell
git tag
git tag -l 'v1.4.2.*'
git tag -a v1.4 -m 'version 1.d'
git tag where_it_all_began -m "commit"
```
## Saving

```shell
git add $file / . 
git add --dry-run

view merge conflicts
git diff
git diff --stat
git diff --staged
git diff --summary
git diff --base $file
git diff $source $target
git diff $master...$branch

git commit -m “message”

Temporarily stores all modified tracked files 
git stash save

Restores stashed files 
git stash pop

Lists all stashed
git stash list

Discards all stashed
git stash drop

missing gitignore
```
## History

```shell
git clean -n

Remove file from stage
git reset $file 

Undoes commits after specified commit
git reset $commit

Returns to specified commit
git reset --hard $commit

git revert $commit

Create a new branch or go to past
git checkout -b $branch $thepast

Switch to another branch/recover file
git checkout $branch
git checkout -- $file

git checkout --track origin/$branch_name

missing rm

git commit --amend
git reflog
git rebase
git rebase -i
```
## Syncing

```shell
git pull

push commit to a remote repository
git push -u $remote $branch

delete remote branch
git push origin --delete :$branch
git push $remote :$branch

git push --set-upstream origin master

get a remote branch 
git fetch origin 

connect a remote 
git remote add $remote $server

list configured remotes 
git remote -v

Delete local remote
git remote prune $remote

delete remote branch
git branch -d $branch
```
## Branching

```shell
git merge

list existing branches
git branch --list

list merged branches 
git branch -a --merged

deletes pushed and merged local branches only
git branch -d $branch

git switch -c $branch 
Note: look into either tracking upstream or origin
```
## Inspection

```shell
git status
missing blame
missing tag
```
## Logging

```shell
git log <branch_name>
git log --grep=”search in commit messages”
git log -S”search in code”
git log -G”regex search in code”

git shortlog
git shortlog HEAD~<number of previous commits>

Options
--graph
--date=relative
--since=”1 week ago”
--until=”yesterday”
--author=”Rico”
--committer=”Rico”
--branches=””
--remotes=””
```
