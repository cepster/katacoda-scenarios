git checkout master
echo 'blah' > inga.txt
git add .
git commit --author "Some Other Developer <someotherdeveloper@cepster.com>" -m "MASTER -- Added inga" 
git checkout feature1
