require 'rails_helper'

RSpec.describe "lists/index", type: :view do
  before(:each) do
    assign(:lists, [
      List.create!(
        :name => "Name",
        :description => "Description",
        :private => false,
        :user_id => 1
      ),
      List.create!(
        :name => "Name",
        :description => "Description",
        :private => false,
        :user_id => 1
      )
    ])
  end

  it "renders a list of lists" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
