require 'rails_helper'

RSpec.describe "lists/show", type: :view do
  before(:each) do
    @user = FactoryGirl.create :user, id:1
    @list = assign(:list, List.create!(
      :name => "Name",
      :description => "Description",
      :private => false,
      :user_id => 1
    ))
    @items = [
        FactoryGirl.create(:item, user_id:1, list_id:1),
        Item.create(name: "tst2", user: @user, list: @list, url:"http://test.com")
    ]
    assign_ability
  end

  it "renders attributes" do
    render

    expect(rendered).to match(/Name/)
    #expect(rendered).to match(/Description/)
  end
end
