# if [ "$PULL_REQUEST" == "false" ]; then
echo -e "Starting to update Foundation to bower\n"
# clone bower-foundation-css
git clone https://github.com/JamesDullaghan/bower-foundation-css.git
# Lets see where we are
pwd
#go into directory and copy data we're interested in to that directory
cp -r dist/assets/* bower-foundation-css/
cd bower-foundation-css
#add, commit and push files
git add .
git commit -m "Foundation build to bower-foundation-css"
# in order to gain access to repository you need to create token
# https://github.com/settings/applications
# Follow rest of direction in this SO post
# http://stackoverflow.com/questions/18027115/comitting-via-travis-ci-failing

git push -fq origin master

echo -e "Done with magic\n"
# fi