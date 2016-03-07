module Swarm
  class Railtie < Rails::Railtie
    puts "HELLO"
    initializer "swarm_ruby" do |app|
      puts "HELLO"
      ActionController::Base.send(:include, Swarm::ScriptInserter)      
      ActionController::Base.after_filter :insert_swarm
    end
  end
end
