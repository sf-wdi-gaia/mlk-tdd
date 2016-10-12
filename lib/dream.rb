class Nation

  def self.join_hands(white_children, black_children)
    true
  end

  def creed
    "all men are created equal"
  end

  def rise_up?
    true
  end

  def judge_by(attribute)
    return false if attribute == :color
    true
  end

end

class State
  attr_accessor :name, :people, :status

  def initialize(name)
    @name = name
    @people = [{ancestors: "slaves"}, {ancestors: "slave-owners"}]
    @people = [{age: Random.new.rand(18), color: "black"}, {age: Random.new.rand(18), color: "white"}] if @name == "Alabama"
    @status = "a state sweltering with the heat of injustice and oppression" if @name == "Mississippi"
  end

  def table_of_brotherhood
    @people.select { |person| person[:ancestors] != "slave-owners" }
  end

  def sit_at_table(people)
    true
  end

  def emancipate
    @status = "an oasis of freedom and justice"
  end

end

class Freedom

  def ring
  end

end
