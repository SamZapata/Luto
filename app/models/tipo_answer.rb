class TipoAnswer < ActiveRecord::Base
	validates :topic, :presence => true

	def initialize
		
	end

	def rango5 (cad)
		if cad === 'Rango 5'
			range_5 = [1,2,3,4,5]
		end
		return range_5
	end

end
