
###################### GIT PARAMETERS #####################################
export GIT_PARENT_DIR=~
export GIT_REPO_NAME=testbinderhubnotebook
export GIT_BRANCH_NAME=master
export GIT_USER=sfouilloux
export GIT_EMAIL=sfouilloux@agaetis.fr
export GITHUB_ACCESS_TOKEN=37e5fbd86b4d50f3828f0480c364e6439fbb11bd
export GIT_USER_UPSTREAM=sfouilloux


############################################################################
#### DO NOT EDIT BELOW THIS LINE: derived variables
############################################################################

export GIT_REMOTE_URL=git@github.com:$GIT_USER/$GIT_REPO_NAME.git
export GIT_REMOTE_URL_HTTPS=https://github.com/$GIT_USER/$GIT_REPO_NAME.git
export GIT_REMOTE_UPSTREAM=$GIT_USER_UPSTREAM/$GIT_REPO_NAME


####################### Git Repo where notebooks will be pushed ############
cd $GIT_PARENT_DIR && git clone $GIT_REMOTE_URL_HTTPS



####################### Change in jupyter config ###########################
if [ ! -f ~/.jupyter/jupyter_notebook_config.py ]; then
   jupyter notebook --generate-config
fi

echo 'c.NotebookApp.disable_check_xsrf = True' >> ~/.jupyter/jupyter_notebook_config.py

cp $GIT_PARENT_DIR/githubcommit/config ~/.ssh/config
