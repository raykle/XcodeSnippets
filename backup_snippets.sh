#! /bin/bash

backupPath="./Backup/"

# 如果文件夹不存在，创建文件夹
if [ ! -d "$backupPath" ]; 
then
    mkdir "$backupPath"
else
    # 文件夹存在，则打包备份
    # backup
    zip -r -o ./Backup.zip "$backupPath"
fi

# remove old
rm -rf "$backupPath"/*

# copy new
cp -R ~/Library/Developer/Xcode/UserData/CodeSnippets/* "$backupPath"

echo "done! 🍻  🎉"