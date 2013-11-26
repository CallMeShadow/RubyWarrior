class Player
  def play_turn(warrior)
  if warrior.health > 13
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
      warrior.attack!
      end
       
    else
    
      if warrior.feel(:backward).empty? == true
      
          warrior.walk!(:backward)
          
      else 
      
          if warrior.feel(:backward).captive? == true
          
              warrior.rescue!(:backward)
              
          else
          
             warrior.rest!
      
          end
      end
      
    end  
    @health=warrior.health
    
  end
end
