FactoryBot.define do
  factory :user do
    name { 'John Doe' }
    email { 'user@example.com' }
    password { 'password' }
    password_confirmation { 'password' }
  end
  factory :group do
    user
    name { 'shoes' }
    icon { 'image_link' }
  end
  factory :expenditure do
    user
    name { 'sneakers' }
    amount { 20_000 }
    group_id { 3 }
  end
end
