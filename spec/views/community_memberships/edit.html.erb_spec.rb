require 'rails_helper'

RSpec.describe "community_memberships/edit", type: :view do
  before(:each) do
    @community_membership = assign(:community_membership, CommunityMembership.create!(
      :user_id => 1,
      :community_id => 1
    ))
  end

  it "renders the edit community_membership form" do
    render

    assert_select "form[action=?][method=?]", community_membership_path(@community_membership), "post" do

      assert_select "input#community_membership_user_id[name=?]", "community_membership[user_id]"

      assert_select "input#community_membership_community_id[name=?]", "community_membership[community_id]"
    end
  end
end
