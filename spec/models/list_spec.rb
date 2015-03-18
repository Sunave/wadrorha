require 'rails_helper'

describe List do

  it "is not valid without name" do
    list = List.new name:''
    expect(list).not_to be_valid
  end

  it "is not valid if current_user.nil?" do
    list = List.create name:"Test"
    expect(list).not_to be_valid
  end
end
