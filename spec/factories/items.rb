FactoryBot.define do
  factory :item do
  association :user

  name            {"ナイキスニーカー"}
  describe        {"軽くて履きやすい"}
  category_id     {3}
  condition_id    {3}
  delivery_fee_id {3}
  prefecture_id   {3}
  datetime_id     {3}
  price           {300}
  
  after(:build) do |item|
    item.image.attach(io: File.open('public/images/nike.jpeg'), filename: 'nike.jpeg')
  end
  
 end
end
    
  
