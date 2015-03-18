FactoryGirl.define do
  factory :list do
    name "Test1"
    description "Testlist one"
    private false
  end

  factory :user do
    username "User1"
    email "test@email.com"
    password "Password1"
    password_confirmation "Password1"
  end
end