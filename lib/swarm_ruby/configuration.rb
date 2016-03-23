module Swarm
  class Configuration
    attr_accessor :SWARM_JS_TOKEN, :SWARM_API_TOKEN, :SWARM_API_SECRET, :SWARM_API_URL

    def initialize
      # Set the API URL to a default; this can be overwritten by user down the line. 
      @SWARM_API_URL ||= "https://d291gmt65i2gs5.cloudfront.net/swarm.js"
    end
  end
end