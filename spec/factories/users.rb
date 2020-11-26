FactoryBot.define do
  factory :user do
    nickname              {"test"}
    email                 {Faker::Internet.free_email}
    password              {Faker::Internet.password(min_length: 6 ,max_length: 20)}
    password_confirmation {password}
    last_name             {"田中"}
    first_name            {"青"}
    last_name_kana        {"タナカ"}
    first_name_kana       {"アオ"}
    birthday              {"2000-2-2"}

  end
end