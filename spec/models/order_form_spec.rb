require 'rails_helper'

RSpec.describe OrderForm, type: :model do
  describe '購入情報の保存' do
    before do
      @order_form = FactoryBot.build(:order_form)
    end

    it 'すべての値が正しく入力されていれば保存できること' do
      expect(@order_form).to be_valid
    end


    it 'postcodeが空だと保存できないこと' do
      @order_form.postcode = nil
      @order_form.valid?
      expect(@order_form.errors.full_messages).to include("Postcode can't be blank")
    end


    it 'postcodeが半角のハイフンを含んだ正しい形式でないと保存できないこと' do
      @order_form.postcode = '/\A[0-9]{3}-[0-9]{4}\z/'
      @order_form.valid?
      expect(@order_form.errors.full_messages).to include("Postcode is invalid")
    end


    it 'prefecture_idが空だと保存できないこと' do
      @order_form.prefecture_id = nil
      @order_form.valid?
      expect(@order_form.errors.full_messages).to include("Prefecture can't be blank")
    end


    it 'prefecture_idが1だと保存できないこと' do
      @order_form.prefecture_id = 1
      @order_form.valid?
      expect(@order_form.errors.full_messages).to include("Prefecture must be other than 1")
    end

    it 'stateが空だと保存できないこと' do
      @order_form.state = nil
      @order_form.valid?
      expect(@order_form.errors.full_messages).to include("State can't be blank")
    end


    it 'street_numberが空だと保存できないこと' do
      @order_form.street_number = nil
      @order_form.valid?
      expect(@order_form.errors.full_messages).to include("Street number can't be blank")
    end


    it 'phone_numberが空だと保存できないこと' do
      @order_form.phone_number = nil
      @order_form.valid?
      expect(@order_form.errors.full_messages).to include("Phone number can't be blank")
    end


    it 'phone_numberがハイフンは不要で11桁以内でないと保存できないこと' do
      @order_form.phone_number = "090-1234-5678"
      @order_form.valid?
      expect(@order_form.errors.full_messages).to include("Phone number is invalid")
    end



    it 'user_idが空だと保存できないこと' do
      @order_form.user_id = nil
      @order_form.valid?
      expect(@order_form.errors.full_messages).to include("User can't be blank")
    end


    it 'item_idが空だと保存できないこと' do
      @order_form.item_id = nil
      @order_form.valid?
      expect(@order_form.errors.full_messages).to include("Item can't be blank")
    end
  
    it "tokenが空では登録できないこと" do
      @order_form.token = nil
      @order_form.valid?
      expect(@order_form.errors.full_messages).to include("Token can't be blank")
    end
  end
end

