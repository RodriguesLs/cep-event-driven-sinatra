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
      connection.rpush(topic, data.to_json)
    end

    def sub(topic)
      loop do
        msg = connection.lpop(topic)

        raise 'Message can\'t be blank' if msg.nil?

        data = JSON.parse(msg)

        handle(topic, data) { |handle_data| yield(handle_data) }
      rescue => e
        pp e
        sleep 10
      end
    end

    private

    def handle(topic, data)
      yield(data)
    rescue => e
      pp e
      pub(topic, data)
    end
  end
end
