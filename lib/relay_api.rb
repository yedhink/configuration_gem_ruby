# frozen_string_literal: true

require_relative "relay_api/version"
require_relative "relay_api/mc_queen"
require_relative "relay_api/geneva"

module RelayApi
  class << self
    def configure
      yield config
    end

    def config
      @_config ||= Config.new
    end
  end

  class Config
    def mcqueen
      RelayApi::McQueen.configure
    end

    def geneva
      RelayApi::Geneva.configure
    end
  end
end
