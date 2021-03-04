# frozen_string_literal: true

require_relative 'cep/version'
require_relative 'cep/asteroids/sinatra/request'

module Cep
  class Error < StandardError; end
end

require_relative 'cep/services/batch_service'
require_relative 'cep/services/sanitize_service'
require_relative 'cep/pub_sub'
