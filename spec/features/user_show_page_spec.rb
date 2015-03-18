require 'rails_helper'
include Warden::Test::Helpers
Warden.test_mode!

describe 'User page' do
  it "shows username for current user" do
    user = FactoryGirl.create(:user)
    login_as(user, scope: :user)
    visit @current_user
    expect(page).to have_content(user.username)
  end
end