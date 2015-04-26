require 'rails_helper'

RSpec.describe "community_memberships/index", type: :view do
  before(:each) do
    assign(:community_memberships, [
      CommunityMembership.create!(
        :user_id => 1,
        :community_id => 2
      ),
      CommunityMembership.create!(
        :user_id => 1,
        :community_id => 2
      )
    ])
  end

  it "renders a list of community_memberships" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
