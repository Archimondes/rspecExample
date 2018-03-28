require_relative './cart.rb'

describe Cart do

  before :each do
    @cart = Cart.new
  end

  context "第一種情境，沒有折扣" do
    it "第四集買 1 本 : [4]" do
      @cart.add([4])
      expect(@cart.calculate).to eq(100)
    end

    it "第一集買 3 本 : [3,3,3]" do
      @cart.add([3,3,3])
      expect(@cart.calculate).to eq(300)
    end
  end

  context "第二種情境：打 5% 折扣" do

    it "第一集買 1 本、第二集買 1 本 : [1,2]" do
      @cart.add([1,2])
      expect(@cart.calculate).to eq(190)
    end

    it "第一集買 2 本、第二集買 2 本 : [1,1,2,2]" do
      @cart.add([1,1,2,2])
      expect(@cart.calculate).to eq(380)
    end

    it "第一集買 1 本、第二集買 2 本 : [1,2,2]" do
      @cart.add([1,2,2])
      expect(@cart.calculate).to eq(290)
    end

    it "第一集買 2 本、第二集買 3 本 : [1,1,2,2,2]" do
      @cart.add([1,1,2,2,2])
      expect(@cart.calculate).to eq(480)
    end


  end


end
