require 'sinatra/base'
require 'slim'
require 'pathname'

module Derecom
  class VagrantBoxes < Sinatra::Base
    get '/' do
      slim :index
    end
    
    get '/boxes/:box' do
      send_file path_for(params[:box])
    end

    private

    def path_for(box)
      data_dir + box
    end

    def data_dir
      @data_dir ||= Pathname.new(ENV['OPENSHIFT_DATA_DIR'])
    end
  end
end
