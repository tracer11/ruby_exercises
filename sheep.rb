class Sheep
@@count = 0
def initialize(input_options)
  @name = input_options[:name]
  @@count += 1 
end

def self.count
 puts @@count
  end

  def bleet
  puts "bahh"
  end

  def self.grass
    puts "yumm"
  end
end

bob = Sheep.new(name: "Bob")
sue = Sheep.new(name: "sue")

bob.bleet
Sheep.grass



Sheep.count