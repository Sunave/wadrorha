# Not implemented at the moment, but here's a template on which to build tests

=begin
require 'rails_helper'

RSpec.describe "communities/show", type: :view do
  before(:each) do
    @community = assign(:community, Community.create!(
      :name => "Name",
      :description => "Description",
      owner_id:1
    ))
    assign_ability
  end

  it "renders attributes in <p>" do
    #byebug
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
  end
end
=end
