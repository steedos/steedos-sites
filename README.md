SteedOS Websites
=========================

Website for SteedOS Apps. use nanoc


1. Install the dependencies (mainly nanoc) so you can preview the SproutCore website:

    sudo gem install bundle
    sudo bundle install

2. Compling the Site
    nanoc 

3. Start local web server:
    nanoc view

4. 启动自动编译服务，每次有文件修改时，会自动编译
    bundle exec guard init nanoc
    bundle exec guard

You can preview the site by running `nanoc` and visiting
[http://localhost:3000/](http://localhost:3000/) in your browser.
