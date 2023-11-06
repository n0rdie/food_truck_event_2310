require './lib/food_truck'
require './lib/item'

RSpec.describe Food_Truck
    it "can make new items" do
        item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
        expect(item1.name).to eq('Peach Pie (Slice)')
        expect(item1.price).to eq(3.75)
    end

    it 'can make food truck' do
        food_truck = FoodTruck.new("Rocky Mountain Pies")
        expect(food_truck.name).to eq("Rocky Mountain Pies")
        expect(food_truck.inventory).to eq({})
    end

    it 'can stock food truck' do
        item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
        food_truck = FoodTruck.new("Rocky Mountain Pies")
        expect(food_truck.check_stock(item1)).to eq(0)
        food_truck.stock(item1, 30)
        expect(food_truck.check_stock(item1)).to eq(30)
    end
end