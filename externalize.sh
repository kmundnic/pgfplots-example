sed -i '' 's/%\\tikzexternalize/\\tikzexternalize/g' main.tex
xelatex --shell-escape main.tex
sed -i '' 's/\\tikzexternalize/%\\tikzexternalize/g' main.tex
cd figures
find . ! '(' -name '*.pdf' ')' -depth 1 -type f | xargs trash
find . -name 'main*' -depth 1 -type f | xargs trash