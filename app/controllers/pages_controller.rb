class PagesController < ApplicationController

	before_action :authenticate_user!, only: [:home]

	def home
    	@events = Event.all
  	end
end
