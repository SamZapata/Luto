class TypeAnswer < ActiveRecord::Base

	attr_accessor :id, :topic

	def initialize (id, topic)
		@id = id
		@topic = topic
	end

	t1 = TypeAnswer.new(1, 'Rango 5')

end
