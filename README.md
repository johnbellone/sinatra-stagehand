Sinatra Stagehand
=================
Sinatra with Bootstrap, jQuery, Haml, LESS and Sprockets.

## Requirements
* [Ruby][7] (>= 1.9.3)

# Out of the Box
* Sinatra
* [Bower][1]
* [Twitter Bootstrap][2]
* [jQuery][3]
* [Sprockets][4] (Asset Pipeline)
* [Font Awesome][5]

## Usage
To get a simple application setup and ready for hacking merely checkout and run
a few commands to setup the dependencies.

        $ git clone https://github.com/johnbellone/sinatra-stagehand
        $ cd sinatra-stagehand
        $ bundle install --binstubs
        $ bower install

When additional packages are adding using [Bower][1] you merely need to run
another `bower install` or if updating an existing package `bower update bootstrap`.
The same obviously goes for any gems that are being utilized by the project.

[0]: http://sinatrarb.com
[1]: http://bower.io
[2]: http://getbootstrap.com
[3]: http://jquery.com
[4]: https://github.com/sstephenson/sprockets
[5]: http://fortawesome.github.io/Font-Awesome/
[7]: http://ruby-lang.org
