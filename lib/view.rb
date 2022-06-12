require_relative 'item'
require_relative 'controller'

class View

  def self.welcome
    puts "****************************"
    puts "Bienvenue dans le projet POO"
    puts "         ITEM SHOP          "
    puts "****************************"
  end

  def self.start_menu
    puts "Bienvenue dans le menu d'accueil."
    puts "*********************************"
    puts "1: Acceder à la liste d'items."
    puts "2: Quitter"
  end

  def self.index_items_menu
    puts "Que souhaitez-vous faire ?"
    puts "Liste des items chargée."
    puts "1: Revenir au menu d'accueil"
  end

  def self.all(all_items)
    all_items.each do |item|
      puts "#{item.id} #{item.name}"
    end
  end

  def self.error
    puts "ERREUR!!!ERREUR!!!"
    puts "Veuillez saisir un choix valide."
  end

  def self.goodbye
    puts "Bye,bye"
  end

end