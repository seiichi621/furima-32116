FactoryBot.define do
  factory :user do
    nickname              {"test"}
    email                 {Faker::Internet.free_email}
    password              {"aaa111"}
    password_confirmation {password}
    last_name             {"田中"}
    first_name            {"青"}
    last_name_kana        {"タナカ"}
    first_name_kana       {"アオ"}
    birthday              {"2000-2-2"}

  end
end