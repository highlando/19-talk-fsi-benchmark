git checkout prep-for-ghp
git merge master
source makethedoc.sh
git add index.html
git commit -m 'prop from master'
git checkout gh-pages
git merge prep-for-ghp
git push origin gh-pages
git checkout master
