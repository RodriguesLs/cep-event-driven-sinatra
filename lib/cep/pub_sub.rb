# frozen_string_literal: true

require 'redis'
require 'singleton'

module Cep
  # Some commentary
  class PubSub
    include Singleton

    def connection
      @connection ||= Redis.new(url: 'redis://:redis_pass@redis:6379/0')
    end

    def pub(topic, data)
      connection.publish(topic, data.to_json)
    end

    def sub(topic)
      connection.subscribe(topic) do |event|
        event.message do |_, msg|
          data = JSON.parse(msg)
          yield(data)
        end
      end
    end
  end
end
