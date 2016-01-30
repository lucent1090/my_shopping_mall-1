class SpecialEvent

	def initialize( event_class = nil )
		@event_class = event_class
	end

	def discount( p )
		@event_class.discount( p )
	end

	def self.exist_event( special )
		x = nil
		if Time.now.month == 12 and Time.now.day == 25
			x = Christmas.new 
		elsif special == true
			x = SpecialOffer.new
		else
			x = Normal.new
		end
		return x
	end

end