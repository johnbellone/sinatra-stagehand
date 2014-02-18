require 'rubygems'
require 'bundler/setup'

# Similar to Heroku, load up a local environment file if it exists. This allows
# for us to use variables for database connections, fine tunings, etc.
require 'dotenv'
Dotenv.overload(File.expand_path('../../.env', __FILE__))

$:.unshift(File.expand_path('../../lib', __FILE__))
require 'stagehand'
