#! /bin/bash

# clear
rm -rf ~/Library/Developer/Xcode/UserData/CodeSnippets/*

# copy new
backupPath="./Backup/"
cp -R "$backupPath"/*.codesnippet ~/Library/Developer/Xcode/UserData/CodeSnippets/

echo "🎉 done! 🍻"