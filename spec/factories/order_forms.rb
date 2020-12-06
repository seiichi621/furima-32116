FactoryBot.define do
  factory :order_form do
    postcode { "123-4567" }
    prefecture_id { 2 }
    state { '世田谷区' }
    street_number { '桜町1-1-1' }
    building_name { '' }
    phone_number { "09012345678" }
    user_id    {1}
    item_id    {1}
    token {"tok_abcdefghijk00000000000000000"}
  end
end
