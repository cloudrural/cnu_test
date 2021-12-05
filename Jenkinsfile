pipeline {
    agent any
    environment {
      GIT_USER_NAME = "Bharath Pantala"
      GIT_USER_MAIL = "bpantala@gmail.com"
    }
    stages {
        stage('Patch') {
            steps{
                git branch: 'feature',
                credentialsId: 'github-key',
                url: 'git@github.com:cloudrural/cnu_test.git'
                sh'''
#!/bin/bash
_main_func_ () {
    git checkout master
    n=1
    while IFS= read -r line || [ -n "$line" ]; do
    git checkout feature "$line"
    n=$((n+1))
    done < ./Patch_File_List.txt
    git config user.name "${GIT_USER_NAME}"
    git config user.email "${GIT_USER_MAIL}"
    git commit -m "Patch-${PATCH_NUMBER}"
    git push origin master
}

_main_func_

if [[ _main_func_ ]] ; then
    echo "Successfully applied the patch from $source_branc to $base_branch. Merging to master......!"
else
   echo "Not Success"
fi
                '''
                
            }
        }
    }
}
