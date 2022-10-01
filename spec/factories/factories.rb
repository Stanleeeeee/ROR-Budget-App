FactoryBot.define do
  factory :user do
    name { 'Emeka' }
    email { 'emeka@example.com' }
    password { 'wewewewe' }
    password_confirmation { 'wewewewe' }
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
