class OrangeTree
  def initialize 
    @height = 0
    @age = 0
    @oranges = 0
    @harvest = 0
    @drop = 0
    @alive = true
    puts "You plant a little seed, and stand back and wait..."
  end    

  def one_year_passes
    @age += 1
    puts "As the year changes, #{@oranges} unpicked oranges fall to the ground..."
    @drop += @oranges
    @oranges = 0
    if @age <=3
      @height += rand(2...4)
    elsif @age > 3 && @age <= 6
      @oranges += ((@height / @age) * 2)    
      @height += rand(1...3)
      elsif @age > 6 && @age <= 9
      @height += rand(0...2)
      @oranges += ((@height / @age) * 7)
    elsif @age >= 10
      if rand <= 0.3
        @alive = false
        puts "Sadly your tree has died. It lived to be #{@age} years old. It gave you #{@harvest} delicious oranges, and you let #{@drop} go to waste."
        exit
      else
        @oranges += ((@height / @age) * 13)
        puts "Your tree is getting old now...it won't grow any taller."
      end
    end
    puts "Your tree is now #{@age} years old. It now stands #{@height} feet tall, and this year it has produced #{@oranges} oranges."  end    
  
  def height
      puts "Your tree is now #{@height} feet tall!"
  end
 
  def count_the_oranges
      puts "Your tree currently has #{@oranges} oranges waiting to be picked."
  end
  
  def pick_an_orange
    if @oranges > 0
      puts "You pick an orange."
      @oranges -= 1
      @harvest +=1
    else
      puts "There are no oranges left to pick this year..."
    end
  end
  
end
