set UPSTREAM="origin"

cd ..

if $(git status -s) (
    echo "The working directory is dirty. Please commit any pending changes."
    exit 1;
)

echo "Deleting old publication"
rmdir /s /q public
mkdir public
git worktree prune
rmdir /s /q .git/worktrees/public/

echo "Checking out gh-pages branch into public"
git worktree add -B gh-pages public %UPSTREAM%/gh-pages

echo "Removing existing files"
rmdir /s /q public/*

echo "Generating site"
hugo

echo "Creating CNAME file for gh-pages"
echo "www.acpbrasil.com" >> public/CNAME

# TODO add the date to the commit msg
echo "Updating gh-pages branch"
cd public && git add --all && git commit -m "Publishing to gh-pages (publish.sh)"

git push origin gh-pages
