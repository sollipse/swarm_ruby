module Swarm
  class Tracker
    def self.generate(opts={})
      raise Swarm::Tracker::GenerationError "foo" unless opts[:USER_ID]

      # Construct a properly formatted url for tracking pixel. 
      pixel_string = "<img src= 'https://www.hnyhnyhny.com/api/v1/impression-pixel?l=hw7OR0XdAJjteQLk" + 
        "&eid=#{opts[:PAGE_VIEW_ID] || '%00'}" + 
        "&userId=#{opts[:USER_ID] || '%00'}" + 
        "'/>"

      # Construct a url for the remotely-loaded JS with custom attributes. 
      config_string = ""
      opts.each do |option_key, option_value|
        # Convert each option into an html-safe string.
        config_string += " #{Regexp.escape(option_key)} = '#{Regexp.escape(option_value)}'"
      end

      # Certain config variables should have been pre-set when Swarm was configured. 
      config_string += " data-customer-id=#{Swarm.configuration.SWARM_JS_TOKEN} "
      config_string += " id='swarm-script' "

      tracking_string = "<script src='#{Swarm::configuration.SWARM_API_URL}' #{config_string}></script> #{pixel_string}"
      return tracking_string.html_safe
    end


    class GenerationError < StandardError
      attr_reader :error

      def initialize(foo)
       super
       @error = "Tracker cannot be created without some kind of unique identifier for this user or session."
      end
    end
  end
end