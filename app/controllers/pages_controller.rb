class PagesController < ApplicationController

	before_action :authenticate_user!, only: [:home]

	def home
    	#@events = Event.all
    	@events = Event.where.not(validity: false).paginate(:page => params[:page], :per_page => 2)
    	if current_user
    		@person = current_user.person

    	end
  	end
  	def index
  		@events = Event.all
  		render :filter
  	end
end
