require 'rails_helper'

RSpec.describe "lists/new", type: :view do
  before(:each) do
    assign(:list, List.new(
      :name => "MyString",
      :description => "MyString",
      :private => false,
      :user_id => 1
    ))
  end

  it "renders new list form" do
    render

    assert_select "form[action=?][method=?]", lists_path, "post" do

      assert_select "input#list_name[name=?]", "list[name]"

      assert_select "textarea#list_description[name=?]", "list[description]"

      assert_select "input#list_private[name=?]", "list[private]"
    end
  end
end
