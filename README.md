# blogAndMiscs
Description:
1. Content / knowledege management
2. Blog 
3. store small tools.


SSH key: ssh-keygen -t rsa -C "miracleadmin@163.com"

Set github pages under github repo-> Settings to let others access your project via internet  (only static pages)
Set github user & mail: git config --global user.email "miracleadmin@163.com"

ABOUT hexo
Install hexo: npm install hexo -g
check version: hexo -v
Initialize hexo: hexo init 
after seeing "Starting blogging with Hexo!", input "npm install"
Generate: hexo g
Start Server: hexo s   (under blog folder)
Deploy to githubpage:  modify _config.yml and add deploy fields in the end.

Create a new blog:  hexo new post "blog name"
More info: [Writing](https://hexo.io/docs/writing.html)
Processing & Deploy: hexo d -g
在生成以及部署文章之前，需要安装一个扩展：npm install hexo-deployer-git --save

deploy to remote server: hexo deploy