require 'faraday'

module Swarm
  class Client
      # Base url for 
      @@base_url = "https://app.swarm.enterprises/api/"
      attr_accessor :username, :api_key

      def initialize(username, api_key)

      end

      def resolve_user(id)
        Faraday.post @@base_url + "user", {username: username, api_key: api_key, user_id: id}
      end

      def resolve_ip(ip)
        Faraday.post @@base_url + "ip", {username: username, api_key: api_key, ip_address: ip}
      end

      def resolve_impression(id)
        Faraday.post @@base_url + "impression", {username: username, api_key: api_key, impression_id: id}
      end

    # app.swarm.enterprises/api/results/user
    # app.swarm.enterprises/api/results/ip
    # app.swarm.enterprises/api/results/impression
  end
end