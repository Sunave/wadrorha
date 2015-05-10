require 'rails_helper'

RSpec.describe Item, type: :model do
  it "is not valid without name" do
    item = Item.new name:''
    expect(item).not_to be_valid
  end

  it "is not valid if current_user.nil?" do
    item = Item.create name:"Test"
    expect(item).not_to be_valid
  end

  it "is not valid if item list nil?" do
    user = FactoryGirl.create :user
    item = Item.create name:"Test", user: user
    expect(item).not_to be_valid
  end

  it "is valid if it has name, user and list" do
    user = FactoryGirl.create :user
    list = FactoryGirl.create :list
    item = Item.create name:"Test", user: user, list: list
    expect(item).to be_valid
  end
end
