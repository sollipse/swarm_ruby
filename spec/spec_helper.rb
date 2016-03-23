require 'pry'

# Stubbing API calls until Swarm Enterprise API is live.
require 'webmock/rspec'
WebMock.disable_net_connect!(allow_localhost: true)

require 'swarm_ruby'

metadata_hash = {partner_id: "v912312a90", network_id: "v912312", site_id: "9adsafda0"}

impression_response = {"result": "bot", ip: "204.23.123.42", "user_id": "abc123", "browser_type": "Chrome", "browser_version": "48", "os_type": "Windows", "os_version": "XP", metadata: metadata_hash }

user_response = {user_id: "abc123", num_bot_impressions: 8, num_human_impressions: 23, total_impressions: 31, impressions: [
"result": "bot", ip: "204.23.123.42", "browser_type": "Chrome", "browser_version": "48", "os_type": "Windows", "os_version": "XP", metadata: metadata_hash },
"result": "bot", ip: "204.23.123.42", "browser_type": "Chrome", "browser_version": "48", "os_type": "Windows", "os_version": "XP", metadata: metadata_hash }
]}



RSpec.configure do |config|
  config.before(:each) do 
    stub_request(:post, "https://app.swarm.enterprises/api/user").
      with(
        body: {"api_key"=>nil, "user_id"=>"1244", "username"=>nil},
        headers: {'Accept'=>'*/*'}
      ).
      to_return(status: 200, body: user_response.to_json, headers: {})
  end
end