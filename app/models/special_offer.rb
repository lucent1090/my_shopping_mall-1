class SpecialOffer
	def discount( price )
		rebate = 0
		rebate = 100 * ( price / 1000 ) if price > 1000
		price = price - rebate
		return price
	end
end