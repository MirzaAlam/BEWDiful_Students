class SecretNumber 
	attr_reader :number

	def initialize 
		array=(1..10).to_a
		@number = array.sample
	end
end