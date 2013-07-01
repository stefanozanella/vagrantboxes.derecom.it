require 'sinatra/base'

module Derecom
  class VagrantBoxes < Sinatra::Base
    get '/' do
      "This is de.re.com Vagrant boxes repository"
    end
  end
end
