class Pigeon
  attr_accessor :name, :weight, :age, :personality
  
  def initialize(name, weight, age, personality)
    @name = name 
    @weight = weight
    @age = age
    @personality = personality
  end 

  def dead?
    age >= 15
  end

  def overweight?
    weight >= 2.1
  end

  def eat(food)
    weight_to_add = food.length.to_f / 10
    @weight += weight_to_add if !dead? || !overweight?
  end
end

skinny = Pigeon.new('pete', 1.0, 2, 'Cool')
pigeon = Pigeon.new('Steve', 12.0, 16, 'Cool')
skinny.eat('cucumber')
p skinny
p pigeon.dead?




# pigeon shouldnt eat too much 
# pigeon should be alive for eat to happen


