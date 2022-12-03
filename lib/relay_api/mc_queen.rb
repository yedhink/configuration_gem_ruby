# frozen_string_literal: true

require_relative "configurable"

module RelayApi
  class McQueen
    # https://medium.com/@leo_hetsch/ruby-modules-include-vs-prepend-vs-extend-f09837a5b073
    extend Configurable
  end
end
