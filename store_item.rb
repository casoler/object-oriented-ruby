# dog1 = {:name => 'beagle', :group => 'hound', :color => 'tricolor', :weight => 24, :sex => 'male'}
# dog2 = {:name => 'german shepherd', :group => 'herding', :color => 'brown', :weight => 70, :sex => 'female'}
# dog3 = {name: 'chihuahua', group: 'toy', color: 'black', weight: 5, :sex => 'female'}

# puts "A #{dog1[:name].capitalize} is in the #{dog1[:group]} group.  The color is #{dog1[:color]}, weight is #{dog1[:weight]}, and sex is #{dog1[:sex]}."
# puts "A #{dog2[:name].capitalize} is in the #{dog2[:group]} group.  The color is #{dog2[:color]}, weight is #{dog2[:weight]}, and sex is #{dog2[:sex]}."
# puts "A #{dog3[:name].capitalize} is in the #{dog3[:group]} group.  The color is #{dog3[:color]}, weight is #{dog3[:weight]}, and sex is #{dog3[:sex]}."

class Dog
  attr_reader :weight, :sex
  attr_writer :weight

  def initialize(options)
    @name = options[:name]
    @group = options[:group]
    @color = options[:color]
    @weight = options[:weight]
    @sex = options[:sex]
  end

  def name
    @name
  end

  def group
    @group
  end

  def color
    @color
  end

  def print_info
    puts "A #{@name.capitalize} is in the #{@group} group.  The color is #{@color}, weight is #{@weight} lbs, and sex is #{@sex}."
  end

end

dog = Dog.new({name:'beagle', group:'hound', color:'tricolor', weight:24, sex:'male'})
dog.print_info
puts dog.name
puts dog.weight

dog2 =Dog.new(:name => 'german shepherd', :group => 'herding', :color => 'brown', :weight => 70, :sex => 'female')
dog2.print_info
puts dog2.name
puts dog2.weight

dog3 =Dog.new name: 'chihuahua', group: 'toy', color: 'black', weight: 5, :sex => 'female'
dog3.print_info
puts dog3.name
puts dog3.weight

