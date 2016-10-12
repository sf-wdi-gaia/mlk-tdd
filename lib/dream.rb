class Nation
  def creed
    'all men are created equal'
  end

  def rise_up?
    true
  end

  def judge_by(criteria = false)
    criteria == :color ? false : true
  end

  def self.join_hands(_group1, _group2)
    true
  end
end

class State
  attr_accessor :name
  @emancipated = false

  def initialize(name)
    @name = name
  end

  def people
    if @name == 'Alabama'
      @people = [{ age: Random.new.rand(18), color: 'black' }, { age: Random.new.rand(18), color: 'white' }]
    else
      @people = [{ ancestors: 'slaves' }, { ancestors: 'slave-owners' }, { age: 1 }]
    end
  end

  def table_of_brotherhood
    [{ ancestors: 'slaves' }]
  end

  def sit_at_table(group)
    table_of_brotherhood << group
  end

  def status
    @emancipated ? 'an oasis of freedom and justice' : 'a state sweltering with the heat of injustice and oppression'
  end

  def emancipate
    @emancipated = true
  end
end

class Freedom
  attr_accessor :land

  def initialize
    @land = []
  end

  def ring(state)
    @land << state
  end
end
