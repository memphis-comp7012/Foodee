class PagesController < ApplicationController

	before_action :authenticate_user!, only: [:home]

	def home
    	@events = Event.all
    	if current_user
    		@person = current_user.person
    	end
  	end
end
