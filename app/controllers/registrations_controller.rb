class RegistrationsController < Devise::RegistrationsController
	def new
		@zones  = Zone.select("id, name").where(:country_id => 1)
		@cities = City.order(name: :asc)
		super		
	end

	def create
		super		
	end

	def update
		super
	end
end
