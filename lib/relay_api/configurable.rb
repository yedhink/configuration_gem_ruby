module RelayApi
	module Configurable
		def configure
			# We should not yield here
			config
		end

		def config
			@_config ||= Config.new
		end
	end

	class Config
		attr_accessor :host

		def initialize
			@host = "custom host not set. Using default host..."
		end
	end
end