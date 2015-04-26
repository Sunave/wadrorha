require 'rails_helper'

RSpec.describe "community_memberships/new", type: :view do
  before(:each) do
    assign(:community_membership, CommunityMembership.new(
      :user_id => 1,
      :community_id => 1
    ))
  end

  it "renders new community_membership form" do
    render

    assert_select "form[action=?][method=?]", community_memberships_path, "post" do

      assert_select "input#community_membership_user_id[name=?]", "community_membership[user_id]"

      assert_select "input#community_membership_community_id[name=?]", "community_membership[community_id]"
    end
  end
end
