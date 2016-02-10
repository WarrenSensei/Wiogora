class Family < ActiveRecord::Base
	has_many :campers

	def parent1_name
		return (parent1_first_name || "") + " " + (parent1_last_name || "")
	end

	def parent2_name
		return (parent2_first_name || "") + " " + (parent2_last_name || "")
	end

end
