class OrderForm
  include ActiveModel::Model

  attr_accessor :user_id,:item_id,:postcode,:prefecture_id,:state,:street_number,:building_name,:phone_number,:token

  
  with_options presence: true do
    validates :postcode,       format: {with: /\A[0-9]{3}-[0-9]{4}\z/, postcode: "is invalid. Include hyphen(-)"}
    validates :prefecture_id
    validates :state
    validates :street_number
    validates :phone_number,  format: { with: /\A(0{1}\d{9,10})\z/,  phone_number: "is invalid"}  
    validates :user_id
    validates :item_id
    validates :token
    end

    

  def save
    order = Order.create(user_id: user_id, item_id: item_id)
    Address.create(postcode: postcode, prefecture_id: prefecture_id, state: state, street_number: street_number, building_name: building_name, phone_number: phone_number,token: token, order_id: order.id)
  end
end