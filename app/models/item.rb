class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :delivery_fee
  belongs_to :prefecture
  belongs_to :datetime

  with_options numericality: { other_than: 1 } do
  validates :category_id
  validates :condition_id
  validates :delivery_fee_id
  validates :prefecture_id
  validates :datetime_id 
  end

  has_one :order
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
  validates :name
  validates :describe
  validates :category_id
  validates :condition_id
  validates :delivery_fee_id
  validates :prefecture_id
  validates :datetime_id
  validates :price
  validates :image
  validates :user_id
  end

  validates :price, format: { with: /\A[0-9]+\z/}


  validates :price, numericality: { greater_than_or_equal_to: 300,less_than: 10000000}
  
end

