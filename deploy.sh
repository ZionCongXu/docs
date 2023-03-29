 
#!/usr/bin/env sh
 
# 确保脚本抛出遇到的错误
set -e
 
# 生成静态文件
npm run docs:build
 
# 进入生成的文件夹
cd docs/.vuepress/dist
 
git init
git add -A
git commit -m 'deploy'
 
# 关联远程仓库
git remote add origin https://github.com/ZionCongXu/ZionCongXu.github.io.git
 
# 如果发布到 https://<USERNAME>.github.io/<REPO>
git push -f https://github.com/ZionCongXu/ZionCongXu.github.io.git master
 
 
# 如果发布到 https://<USERNAME>.github.io/<REPO>,ssh的话需要加密钥
# git push -f git@github.com:xxxx/username.github.io.git master
 
cd -
