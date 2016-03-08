module Swarm
  module ScriptInserter
    
    def insert_swarm
      body_tag = %r{</body>}

      js_script = %Q(
        <script type='text/javascript' src='https://d291gmt65i2gs5.cloudfront.net/swarm.js'
          async='1'
          id='swarm-script'
          data-customer-id=#{ENV['SWARM_JS_TOKEN']}
          > 
        </script>
        <script>
          console.log('loaded')
        </script>
        <img src="https://www.hnyhnyhny.com/api/v1/impression-pixel?l=hw7OR0XdAJjteQLk"/>
      )

      if (
        response.content_type == 'text/html' &&
        response.body.match(body_tag)
      )
        response.body = response.body.gsub(body_tag, js_script + '\\0')
      end
      puts Swarm.configuration.inspect
    end
  end
end