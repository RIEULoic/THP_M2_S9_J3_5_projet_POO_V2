require_relative 'view'
require_relative 'item'
#require_relative 'db/item'

class Controller

  def open_app
    View.welcome
  end

  def start_menu

    View.start_menu

    while true  
      params = gets.chomp.to_i

      case params
        when 1
          Item.index_items
          View.index_items_menu
          Controller.user_input_in_index_items_menu
        when 2
          View.goodbye
          break #quitte le programme
        else
          View.error
      end  
    end
  end

  def self.user_input_in_index_items_menu  
    while true
      params = gets.chomp.to_i

      case params
        when 1
          View.start_menu
          break
        else
          View.error
      end
    end
  end

end

#  def create_gossip
#    Gossip.new
#  end

#  def save_gossip(author, content)
#    CSV.open("db/gossip.csv", "wb") do |csv|
#      csv << [@author, @content]
#    end
#  end

#  def perform
#   new_gossip = create_gossip
   #new_gossip.save_gossip(author, content)

#  end
  
