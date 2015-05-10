require 'rails_helper'

RSpec.describe "lists/edit", type: :view do
  before(:each) do
    @list = assign(:list, List.create!(
      :name => "MyString",
      :description => "MyString",
      :private => false,
      :user_id => 1
    ))
  end

  it "renders the edit list form" do
    render

    assert_select "form[action=?][method=?]", list_path(@list), "post" do

      assert_select "input#list_name[name=?]", "list[name]"

      assert_select "textarea#list_description[name=?]", "list[description]"

      assert_select "input#list_private[name=?]", "list[private]"
    end
  end
end
