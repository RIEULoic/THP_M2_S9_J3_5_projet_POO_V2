require 'csv'

class Item
attr_reader :id, :name, :price

  def initialize(id, name, price)
    @id = id
    @name = name
    @price = price
  end

  def self.index_items
    items = Item.all
    View.all(items)
  end

  def self.all
    all_items = []

    CSV.foreach("db/item.csv") do |l|
      item = Item.new(l[0], l[1], l[2])
      all_items << item
    end
    return all_items  
  end
end

