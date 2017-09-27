class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def nickname
    @nickname = @name[0..3]
  end

  def birth_year
    return Time.now.year - @age.to_i
  end

  def introduction
    return "Name: %s, Age: %i" % [@name, @age]
  end

end
