require 'rails_helper'

describe Item do
  before do
     user = FactoryBot.create(:user)
    @item = FactoryBot.build(:item, user_id: user.id)
  end

  describe '商品出品機能' do
    context '商品の情報を入力がうまくいかない時' do
    
    it "imageが選択されてない場合は登録できないこと" do
      @item.image   = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Image can't be blank")
    end
 
    
    it "商品名が空の場合登録できないこと" do
      @item.name = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Name can't be blank")
    end


    it "商品説明が空の場合登録できないこと" do
      @item.describe = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Describe can't be blank")
    end

    
    it " category_idがない場合は登録できないこと " do
      @item.category_id = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Category can't be blank")
    end

    
    it "condition_idがない場合は登録できないこと" do
      @item.condition_id = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Condition can't be blank")
    end
 
    
    it "delivery_fee_idがない場合は登録できないこと" do
      @item.delivery_fee_id = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Delivery fee can't be blank")
    end
 
    
    it "prefecture_idがない場合は登録できないこと" do
      @item.prefecture_id = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Prefecture can't be blank")
    end
 
    
    it "datetime_id がない場合は登録できないこと" do
      @item.datetime_id  = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Datetime can't be blank")
    end

    it 'priceがない場合登録できないこと' do
      @item.price = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Price can't be blank")
    end


    it 'priceが300以下の場合だと登録できないこと' do
      @item.price = "299"
      @item.valid?
      expect(@item.errors.full_messages).to include("Price must be greater than or equal to 300")
    end

    it 'priceが10000000以上の場合だと登録できないこと' do
      @item.price = "9999999"
      @item.valid?
      expect(@item).to be_valid
    end

    it " priceが半角数字のみ登録できること " do
      @item.price = "500"
      @item.valid?
      expect(@item).to be_valid
    end
    

    it 'user_idがない場合登録できないこと' do
      @item.user = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("User can't be blank")
    end

    
 
    
    it "iamgeとname、describeとcategory_id、condition_idとdelivery_fee、prefecture_id、datetime_id、price、user_idが存在すれば登録できること" do
      expect(@item).to be_valid
    end
 
  end
 end
end
    
 
    
    
 
    
    