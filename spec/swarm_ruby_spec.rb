require 'spec_helper'

describe "Swarm Client" do
  context "initialization" do 
    it 'fails when initialized without api key or username' do
      Swarm.new
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