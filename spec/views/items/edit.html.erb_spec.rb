require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @lists = [(FactoryGirl.create :list, id: 1)]
    @user = FactoryGirl.create :user, id: 1
    @item = assign(:item, Item.create!(
      :name => "MyString",
      :url => "http://MyText.com",
      :description => "MyText",
      :important => false,
      :list_id => 1,
      user_id:1
    ))

    assign_ability
  end

  it "renders the edit item form" do
    current_user = @user

    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input#item_name[name=?]", "item[name]"

      assert_select "input#item_url[name=?]", "item[url]"

      assert_select "textarea#item_description[name=?]", "item[description]"

      assert_select "input#item_important[name=?]", "item[important]"

      assert_select "select#item_list_id[name=?]", "item[list_id]"
    end
  end
end

