## Git Installation
```
sudo apt install git

git config --global user.name "Username"
git config --global user.email "username@gmail.com"

mkdir myrepo
cd myrepo
git init
git status #To check files info in dir

git add filename

git commit -m "description"
```

## Building repository and commit and pusghing
```
git remote -v # checking remote repo
git remote add origin https://github.com/username/repo_name.git

git push origin main

```

## Merging branches
```
git checkout main
git merge new_branch
```
