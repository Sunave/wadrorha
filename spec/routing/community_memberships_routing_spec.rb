require "rails_helper"

RSpec.describe CommunityMembershipsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/community_memberships").to route_to("community_memberships#index")
    end

    it "routes to #new" do
      expect(:get => "/community_memberships/new").to route_to("community_memberships#new")
    end

    it "routes to #show" do
      expect(:get => "/community_memberships/1").to route_to("community_memberships#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/community_memberships/1/edit").to route_to("community_memberships#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/community_memberships").to route_to("community_memberships#create")
    end

    it "routes to #update" do
      expect(:put => "/community_memberships/1").to route_to("community_memberships#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/community_memberships/1").to route_to("community_memberships#destroy", :id => "1")
    end

  end
end
