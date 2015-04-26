require 'rails_helper'

RSpec.describe "community_memberships/show", type: :view do
  before(:each) do
    @community_membership = assign(:community_membership, CommunityMembership.create!(
      :user_id => 1,
      :community_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
