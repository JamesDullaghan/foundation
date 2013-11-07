# if [ "$PULL_REQUEST" == "false" ]; then
echo -e "Starting to update Foundation to bower\n"

#go to home and setup git
git config --global user.email "james@fldlvl.com"
git config --global user.name "James"

# clone bower-foundation-css
git clone https://github.com/JamesDullaghan/bower-foundation-css.git

pwd
#go into directory and copy data we're interested in to that directory
cp -r dist/assets/* bower-foundation-css/
cd bower-foundation-css


#add, commit and push files
git add .
git commit -m "Foundation build to bower-foundation-css"
# force quiet
echo -e "Host github.com\n\tStrictHostKeyChecking no\n" >> ~/.ssh/config
git push -fq origin master

echo -e "Done with magic\n"
# fi