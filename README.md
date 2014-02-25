SteedOS Websites
=========================

Website for SteedOS Apps. use nanoc


1. Install the dependencies (mainly nanoc) so you can preview the SproutCore website:

    sudo gem install bundle
    sudo bundle install

# Updating the Site

You can preview the site by running `nanoc` and visiting
[http://localhost:3000/](http://localhost:3000/) in your browser.

The templates for the site are located in `layouts/`. Each content page is
located in `content/`.

To configure navigation tabs, modify the metadata at the top of each page:

    ---
    title: SteedOS - About
    id: about
    h1: About SteedOS
    download: true
    subnav:
    - What is SteedOS
    - Who's Using SteedOS
    - Core Team
    - Logos
    ---

* `title` - the title that is displayed in the browser.
* `id` - determines the active state of the main navigation at the top.
* `h1` - fills in the main title on the page itself
* `download` - indicates whether the download button should be displayed
* `subnav` - a list of panels on the page to navigate through

You can add modal content using a modal helper:

    <% modal "your-modal-id" do %>
      <h1>Modal content here</h1>
    <% end %>

The URL structure has changed slightly. Instead of being located at /community.html,
the page is now located at /community/. Please make sure that all links to images, CSS
and JavaScript are absolute (/js/myjs.js, not js/myjs.js).

# Deploying Changes

_**Note:** Before deploying, please preview the site and make sure that everything looks
correct! Additionally, when you run the `git status` command below, please make sure the
changes are sane._

Deploying your changes is a simple 2 step process:

1. Compile the changes into the output directory:

        nanoc

1. Commit and push your changes

        cd output
        git status
        git commit -am "New build."
        git push