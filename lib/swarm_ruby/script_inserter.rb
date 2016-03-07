module Swarm
  module ScriptInserter
    BODY_TAG = %r{</body>}

    JS_SCRIPT = %q{
      <script src='https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.8.3/underscore-min.js'></script>
      <script>
        alert("loaded")
      </script>    
    }

    def insert_swarm
      if (
        response.content_type == 'text/html' &&
        response.body.match(BODY_TAG)
      )
        response.body = response.body.gsub(BODY_TAG, JS_SCRIPT + '\\0')
      end      
    end
  end
end