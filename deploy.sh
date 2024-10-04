#!/bin/bash

DEPLOYDIR="/tmp/hostinger_deploy"
REPO=$1

rm -rf ${DEPLOYDIR}

echo "Building the app..."
if jekyll build;  then
  echo "jekyll build success";
   if mkdir -p ${DEPLOYDIR};  then
     cd ${DEPLOYDIR};
     echo "Cloning...";
     if git clone ${REPO} deploy; then
       echo "git clone ${REPO} successful.."
       cd -
       echo "copying files"
       if cp -r _site/* ${DEPLOYDIR}/deploy; then
	 cd ${DEPLOYDIR}/deploy
	  git add  *
	if git commit -m "$(date +%F_%H-%M-%S)" ; then
	   git push 
	  echo "Deploy Successful.."

	else
	  echo "git commit failed.."
	fi
       else
	 echo "Copy failed";
       fi
     else
       echo "git clone ${REPO} Failed.";
     fi
   else 
     echo "failed to create ${DEPLOYDIR}.";
   fi
else 
  echo "jekyll build failed";
fi

     # if cp -r _site/* ${DEPLOYDIR}/deploy then
	# git add *
	# printf -v date '%(%Y-%m-%d %H:%M:%S)T\n' -1 
	# printf ${date}
	# git commit -m ${date} 
	# git push 
    # else
	# echo "commit failed."
    # fi
  # else
      # echo "cloning failed."
  # fi
