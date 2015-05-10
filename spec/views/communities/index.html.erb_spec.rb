require 'rails_helper'

RSpec.describe "communities/index", type: :view do
  before(:each) do
    assign(:communities, [
      Community.create!(
        :name => "Name",
        :description => "Description",
        owner_id: 1
      ),
      Community.create!(
        :name => "Name",
        :description => "Description",
        owner_id: 1
      )
    ])
    assign_ability
  end

  it "renders a list of communities" do
    render
    assert_select "h4", :class => "panel-title".to_s, :count => 2
  end
end
