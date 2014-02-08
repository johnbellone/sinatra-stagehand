require 'sinatra/base'
require 'sinatra/asset_pipeline'
require 'haml'

module Stagehand
  class Application < Sinatra::Base
    configure do
      set :root, Stagehand.root
    end

    register Sinatra::AssetPipeline

    get '/' do
      haml :index
    end
  end
end
