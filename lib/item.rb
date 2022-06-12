require 'csv'

class Item
attr_reader :id, :name, :price, :quantity, :brand 

  def initialize(id, name, price, quantity, brand)
    @id = id
    @name = name
    @price = price
    @quantity = quantity
    @brand = brand
  end

  def self.index_items
    items = Item.all
    View.all(items)
  end

  def self.all
    all_items = []

    CSV.foreach("db/item.csv") do |line|
      item = Item.new(line[0], line[1], line[2], line[3], line[4])
      all_items << item
    end
    return all_items  
  end
end

