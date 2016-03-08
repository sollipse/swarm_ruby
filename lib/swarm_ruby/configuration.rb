module Swarm
  class Configuration
    attr_accessor :SWARM_JS_TOKEN, :globally_active

    def initialize
      @globally_active = false
    end
  end
end