# if [ "$PULL_REQUEST" == "false" ]; then
echo -e "Starting to update Foundation to bower\n"

#go to home and setup git
git config --global user.email "james@fldlvl.com"
git config --global user.name "James"

#using token clone gh-pages branch
git clone https://github.com/JamesDullaghan/bower-foundation-css.git bower-foundation-css

#go into directory and copy data we're interested in to that directory
cd bower-foundation-css
cp -Rf JamesDullaghan/foundation/dist/assets/* .

#add, commit and push files
git add -f .
git commit -m "Foundation build to bower-foundation-css"
# force quiet
git push -fq origin bower-foundation-css

echo -e "Done with magic\n"
# fi