module RequirementsHelper
	def checked(area)
		@requirement.atributo.nil? ? false : @requirement.atributo.match(area)
	end	
end
 