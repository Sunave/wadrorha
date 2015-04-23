require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    FactoryGirl.create(:list, id: 1)
    @item = assign(:item, Item.create!(
      :name => "MyString",
      :url => "MyText",
      :description => "MyText",
      :important => false,
      :list_id => 1
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input#item_name[name=?]", "item[name]"

      assert_select "textarea#item_url[name=?]", "item[url]"

      assert_select "textarea#item_description[name=?]", "item[description]"

      assert_select "input#item_important[name=?]", "item[important]"

      assert_select "select#item_list_id[name=?]", "item[list_id]"
    end
  end
end
