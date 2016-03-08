require "swarm_ruby/version"
require "swarm_ruby/configuration"
require "swarm_ruby/client"
require 'swarm_ruby/rails' if defined?(Rails)
require 'swarm_ruby/railtie' if defined?(::Rails::Railtie)

module Swarm
  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end