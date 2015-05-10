require "rails_helper"

RSpec.describe CommunityMembershipsController, type: :routing do
  describe "routing" do

    it "routes to #new" do
      expect(:get => "/community_memberships/new").to route_to("community_memberships#new")
    end

    it "routes to #create" do
      expect(:post => "/community_memberships").to route_to("community_memberships#create")
    end

    it "routes to #destroy" do
      expect(:delete => "/community_memberships/1").to route_to("community_memberships#destroy", :id => "1")
    end

  end
end
