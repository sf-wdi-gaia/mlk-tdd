class Nation
	attr_reader :creed
	def initialize
		@creed = "all men are created equal"
	end
	def rise_up?
		true
	end

	def judge_by(characteristic)
		return false if characteristic == :color
		return true if characteristic == :character
	end

	def self.join_hands(*people)

	end
end

class State
	attr_reader :name, :people, :table_of_brotherhood
	attr_accessor :status
	def initialize(name)
		@name = name
		@people = [{ancestors: "slaves", age: 5, color: "black"}, {ancestors: "slave-owners", age: 5, color: "white"}]
		@table_of_brotherhood = [{ancestors: "slaves", age: 5, color: "black"}]
		@status = "a state sweltering with the heat of injustice and oppression"
	end

	def sit_at_table(people)

	end

	def emancipate
		@status = "an oasis of freedom and justice"
	end
end

class Freedom
	attr_accessor :freed
	def initialize
		@freed = Array.new
	end
	def ring(*states)
		for i in 0...states.length
			@freed.push(states[i])
		end
		return states
	end
	def land
		@freed
	end
end