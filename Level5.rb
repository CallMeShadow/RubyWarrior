class Player
  def play_turn(warrior)
    if warrior.feel.empty? == true
      if warrior.health < 20
        if @health <= warrior.health
          warrior.rest!
        else
          warrior.walk!
        end
      else
        warrior.walk!
      end
    else
    if warrior.feel.enemy? == true
      warrior.attack!
    else
      warrior.rescue!
    end
    end
    @health=warrior.health
  end
end
