require 'csv'

class Item
attr_reader :id, :name

  def initialize(id, name)
    @id = id
    @name = name
  end

  def self.index_items
    items = Item.all
    View.all(items)
  end

  def self.all
    all_items = []

    CSV.foreach("db/item.csv") do |l|
      item = Item.new(l[0], l[1])
      all_items << item
    end
    return all_items  
  end
end

