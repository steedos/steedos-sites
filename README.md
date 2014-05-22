SteedOS Websites
=========================

Website for SteedOS Apps. use nanoc


1. Install the dependencies (mainly nanoc) so you can preview the SproutCore website:

    gem install bundle
    bundle install

2. Compling the Site
    nanoc 

3. Start local web server:
    nanoc view

4. 安装自动编译服务
    bundle install
    bundle exec guard init nanoc

5. 启动自动编译服务，每次有文件修改时，会自动编译   
    bundle exec guard

You can preview the site by running `nanoc` and visiting
[http://localhost:3000/](http://localhost:3000/) in your browser.
