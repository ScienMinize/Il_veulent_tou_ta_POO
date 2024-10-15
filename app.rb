class Player
  # Déclare les attributs accessibles : name, hp et attack_power
    attr_accessor :name, :hp, :attack_power
  
    def initialize(name, hp, attack_power)
      # Méthode d'initialisation crée un nouveau joueur avec un nom, des points de vie et une puissance d'attaque
      @name = name                  # Nom au joueur
      @hp = hp                      # Points de vie
      @attack_power = attack_power  # Puissance d'attaque
    end
  
    def show_state # Montre l'état actuel du joueur (nom et points de vie)
      puts "#{@name} - HP: #{@hp}"
    end

  # Méthode pour attaquer un autre joueur
  # Réduit les points de vie de l'autre joueur par la puissance d'attaque
    def attacks(other_player)
      other_player.hp -= @attack_power # Retire les points de vie de l'autre joueur
      puts "#{@name} attaque #{other_player.name} pour #{@attack_power} points de dégâts !"
    end
  end
  
  # Création des joueurs
  player1 = Player.new("Josiane", 100, 15) #Joueur 1 Josianne
  player2 = Player.new("José", 100, 10)    #Joueur 2 José
  
  # Présentation des joueurs
  puts "L'état de chaque joueur :"
  player1.show_state          # Status du Joueur 1 Josianne
  player2.show_state          # Status du Joueur 2 José
  
  # Début du combat
  puts "Passons à la phase d'attaque :"
  player1.attacks(player2)  # Josianne attaque José
  player2.attacks(player1)  # José attaque Josianne 
  
  # Affichage de l'état après les attaques
  puts "L'état après l'attaque :"
  player1.show_state        # Status du Joueur 1 aprés l'attaque 
  player2.show_state        # Status du Joueur 2 apres l'attaque

  # Début du combat
puts "Passons à la phase d'attaque :"
player1.attacks(player2)
player2.attacks(player1)

# Affichage de l'état après les attaques
puts "Voici l'état après l'attaque :"
player1.show_state
player2.show_state

# Fin du combat
puts "Le combat est terminé !"
