require 'sinatra'
require 'json'

module Sinatra
  class Request
    def json
      ::JSON.parse(body.read)
    # rescue
    #  {}
    end
  end
end
