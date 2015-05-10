require 'rails_helper'

RSpec.describe "lists/index", type: :view do
  before(:each) do
    FactoryGirl.create(:user, id: 1)
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
    assign_ability
  end

  it "renders a list of lists" do
    render
    assert_select ".link-box", :count => 2
  end
end
