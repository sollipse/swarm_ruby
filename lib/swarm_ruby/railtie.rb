module Swarm
  class Railtie < Rails::Railtie
    puts "HELLO"
    config.after_initialize do |app|
      puts "HELLO"
      ActionController::Base.send(:include, Swarm::ScriptInserter)      
      ActionController::Base.after_filter :insert_swarm
    end
  end
end
