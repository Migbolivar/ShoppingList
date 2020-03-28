class Item 

	attr_reader :text
	attr_writer :checked, :text

	def initialize(text="")
		@text = text
		@checked = false
		
	end
	
	def to_s
		if @checked
			"[x] " + @text
		else
			"[ ] " + @text
		end
	end
	
end