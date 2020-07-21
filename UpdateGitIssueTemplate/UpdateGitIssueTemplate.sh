#!/bin/sh

#
# コミット＆プッシュ処理
#
# $1 フォルダパス 
#
function commit_and_push() {
    cd $1
    #git checkout master
    git pull
    git add ./.gitlab
    git commit -m "Update"
    git push origin master
    cd ..
}

# マスターリポジトリ名
master_repo_name="./product-develop"

#
# 反映先のリポジトリ名のリストを取得
#
target_repo_names=()
for foldername in `find . -maxdepth 1 -type d`; do
    if [ "$foldername" != "$master_repo_name" ] && [ "$foldername" != "." ]; then
        echo $foldername
        target_repo_names+=("$foldername")
    fi
done

echo "### Push to master repository ###"
if [ -e $master_repo_name ]; then
    commit_and_push $master_repo_name
else
    echo "$master_repo_name is not found"
    exit -1
fi

echo "### Push to target repository ###"
for target_repo_name in ${target_repo_names[@]}; do
    echo "### Target Repository : $target_repo_name ###"
    cp -pr "$master_repo_name/.gitlab" "$target_repo_name/"
    commit_and_push $target_repo_name
done

read -p "Press [Enter] key to stop."
