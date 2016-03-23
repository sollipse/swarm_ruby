require 'spec_helper'

describe "Swarm Client" do

  context "configuration" do
    before do
      Swarm.configure do |config|
        puts ENV.inspect
        config.SWARM_JS_TOKEN = "1234"
      end
    end

    it "allows user to set a custom JS token" do
      expect(Swarm.configuration.SWARM_JS_TOKEN).to eq '1234'
    end
  end


  context "client initialization" do 
    it 'fails when initialized without api key or username' do
      client = Swarm::Client.new('asdfadsfadsfsadf', 'asdfasdfasdfafs')
      b = client.resolve_user '1244'
      binding.pry
      JSON.parse b.body
    end
  end

  context "request to swarm json api" do
    it "returns user" do 
    end

    it "returns ip address" do 
    end

    it "returns impression" do 
    end
  end
end